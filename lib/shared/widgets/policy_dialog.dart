import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../commands/navigate_to_command.dart';
import '../../routing/page_configurations/auth_page_configuration.dart';
import 'package:base_flutter/shared/extensions/translate_extention.dart';
import 'package:base_flutter/shared/extensions/size_extension.dart';
import '../../styles.dart';
import '../../themes.dart';

class PolicyDialog extends StatelessWidget {
  final String? title;
  final String? description;
  PolicyDialog({this.title, this.description});
  Widget build(BuildContext context) {
    AppTheme theme = Provider.of(context);

    return Scaffold(
      backgroundColor: theme.red,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 45.h, horizontal: 13.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 600,
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.all(
                    Radius.circular(25.0.w),
                  )),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Container(
                    child: InkWell(
                        child: Icon(Icons.close_outlined, size: FontSizes.s19),
                        onTap: () async {
                          Navigator.pop(context);
                        }),
                    alignment: Alignment.centerRight,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(22.w),
                  child: Text(title ?? "",
                      style: TextStyles.title.copyWith(color: theme.red)),
                ),
                Padding(
                  padding: EdgeInsets.all(22.w),
                  child: Container(
                    height: 400,
                    child: ListView(children: [
                      Text(description ?? "", style: TextStyles.normal)
                    ]),
                  ),
                )
              ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('AlrealdyaMember'.translate(context),
                    style: TextStyles.normal.copyWith(color: Colors.white)),
                InkWell(
                  child: Text('SignIn'.translate(context),
                      style: TextStyles.normal.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                  onTap: () {
                    Navigator.pop(context);
                    NavigateToCommand().run(
                        AuthPageConfiguration(subPage: AuthPageSubPage.login));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
