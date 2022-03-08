import 'package:flutter/material.dart';
import 'package:base_flutter/shared/widgets/custom_app_bar.dart';
import 'package:base_flutter/shared/widgets/rounded_button.dart';
import 'package:flutter/gestures.dart';
import 'package:base_flutter/features/profile/pages/edit_profile_page.dart';
import 'package:base_flutter/features/profile/cubit/profile_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:base_flutter/data/repositories/user_repository.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late TapGestureRecognizer _tapPressRecognizer;
  late ProfileCubit _profileCubit;

  @override
  void initState() {
    super.initState();
    _tapPressRecognizer = TapGestureRecognizer()..onTap = _handlePress;
  }

  @override
  void dispose() {
    _tapPressRecognizer.dispose();
    super.dispose();
  }

  void _handlePress() {}

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileCubit>(
        create: (context) {
          final prCubit =
              ProfileCubit(userRepository: context.read<UserRepository>());
          _profileCubit = prCubit;
          prCubit.getDriverProfile();
          context.loaderOverlay.show();
          return prCubit;
        },
        child: BlocListener<ProfileCubit, ProfileState>(listener:
            (context, state) {
          print('state$state');
          if (state is Success) {
            context.loaderOverlay.hide();
          } else if (state is Loading) {
            context.loaderOverlay.show();
          } else if (state is Error) {
            context.loaderOverlay.hide();
            Fluttertoast.showToast(
                msg: "Something wrong, please try again later",
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.redAccent,
                textColor: Colors.white,
                fontSize: 16.0);
          }
        }, child:
            BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
          return Scaffold(
            appBar: customAppBar(title: Text('マイページ')),
            body: ListView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(10),
              children: [
                Row(
                  children: [
                    Container(
                        width: 120,
                        child: Text('所属会社',
                            style: TextStyle(
                                color: Color(0xff707070), fontSize: 14))),
                    Expanded(
                        child: Text('丸市運送株式会社',
                            style: TextStyle(
                                color: Color(0xff707070), fontSize: 14)))
                  ],
                ),
                Divider(height: 20),
                Row(
                  children: [
                    Container(
                        width: 120,
                        child: Text('氏名',
                            style: TextStyle(
                                color: Color(0xff707070), fontSize: 14))),
                    Expanded(
                        child: Text('山梨 太郎',
                            style: TextStyle(
                                color: Color(0xff707070), fontSize: 14)))
                  ],
                ),
                Divider(height: 20),
                Row(
                  children: [
                    Container(
                        width: 120,
                        child: Text('氏名(カナ)',
                            style: TextStyle(
                                color: Color(0xff707070), fontSize: 14))),
                    Expanded(
                        child: Text('ヤマナシ タロウ',
                            style: TextStyle(
                                color: Color(0xff707070), fontSize: 14)))
                  ],
                ),
                Divider(height: 20),
                Row(
                  children: [
                    Container(
                        width: 120,
                        child: Text('電話番号',
                            style: TextStyle(
                                color: Color(0xff707070), fontSize: 14))),
                    Expanded(
                        child: Text('08012346789',
                            style: TextStyle(
                                color: Color(0xff707070), fontSize: 14)))
                  ],
                ),
                Divider(height: 20),
                Row(
                  children: [
                    Container(
                        width: 120,
                        child: Text('メールアドレス',
                            style: TextStyle(
                                color: Color(0xff707070), fontSize: 14))),
                    Expanded(
                        child: Text('yamanashi.tarou@maruichi.co.jp',
                            style: TextStyle(
                                color: Color(0xff707070), fontSize: 14)))
                  ],
                ),
                Divider(height: 20),
                RoundedButton(
                    text: '編集',
                    style: TextStyle(fontSize: 20),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EditProfilePage(),
                      ));
                    }),
                Divider(height: 60),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      border: Border.all(color: Color(0xff707070))),
                  child: RichText(
                      text: TextSpan(
                          text:
                              '\t【退会について】\n退会後は全ての作業記録が閲覧できなくなります。またこの操作は元に戻すことができないため慎重に操作を行ってください。退会(アカウントの削除)をご希望の方は',
                          style:
                              TextStyle(color: Color(0xff707070), fontSize: 11),
                          children: [
                        TextSpan(
                            text: 'こちら',
                            recognizer: _tapPressRecognizer,
                            style: TextStyle(
                                fontSize: 11,
                                color: Color(0xff5DA2FF),
                                decoration: TextDecoration.underline)),
                        TextSpan(
                            text: 'から',
                            style: TextStyle(
                                color: Color(0xff707070), fontSize: 11))
                      ])),
                )
              ],
            ),
          );
        })));
  }
}
