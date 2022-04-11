import 'package:base_flutter/commands/base_command.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/features/home_login/home_log_in_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/src/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController passwordController;
  late OverlayState? overlayState;
  late OverlayEntry overlayEntry;
  showOverLay(BuildContext context) async {
    overlayState!.insert(overlayEntry);
  }

  @override
  void initState() {
    overlayState = Overlay.of(context);
    overlayEntry = OverlayEntry(
      maintainState: true,
      builder: (context) => ruleTable(),
    );
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    overlayEntry.remove();
    // TODO: implement dispose
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final read = Provider.of<HomeLoginProvider>(context, listen: false);
    final watch = Provider.of<HomeLoginProvider>(context, listen: true);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 449,
          ),
          TextFormField(
            onChanged: (value) {
              read.checkValidate(passwordController.text);
            },
          ),
          SizedBox(
            height: 3,
          ),
          watch.isValidPassword
              ? SizedBox()
              : Row(
                  children: [
                    Text(
                      "This password does not satisfy the current policy requirements",
                      style: TextStyle(
                        color: Color(
                          0xFFF72C2C,
                        ),
                        fontSize: 10,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        read.toggleShowOverLay();
                        watch.isShowOverLay
                            ? showOverLay(context)
                            : overlayEntry.remove();
                      },
                      child: SvgPicture.asset(
                        AppImage.showRuleIconImage,
                      ),
                    )
                  ],
                )
        ],
      ),
    );
  }
}

Widget ruleTable() {
  return Container(
    decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: AppColors.borderLowColor)),
    margin: EdgeInsets.only(top: 520, bottom: 166, left: 22, right: 21),
    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("1. The password must be 8 to 20 characters ", style: normalStyle),
        Text(
          "2. The password must include at least one (1) uppercase, one (1) lowercase, one (1) number and one (1) symbol",
          style: normalStyle,
        ),
        Text(
          "3. The password must be changed every 90 days",
          style: normalStyle,
        ),
        Text(
          "4. Last 5 used passwords cannot be used",
          style: normalStyle,
        )
      ],
    ),
  );
}

TextStyle normalStyle = TextStyle(
  color: AppColors.textSecondaryColor,
  fontSize: 12,
  fontWeight: FontWeight.w400,
);
