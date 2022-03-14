import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/features/authentication/views/login_page/login_page.dart';
import 'package:base_flutter/features/home_screen/my_investers/my_investor.dart';
import 'package:base_flutter/features/home_screen/widget/category_chose.dart';
import 'package:flutter/material.dart';
class DrawerField extends StatelessWidget {
  const DrawerField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Drawer(
        child: Column(
          children: [
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 166, bottom: 30),
              child: InkWell(
                child: Icon(
                  Icons.clear,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            CategoryChose(
              image: AppImage.myProfile,
              title: 'MY PROFILE',
            ),
            CategoryChose(
              image: AppImage.myInstructionImage,
              title: 'MY INSTRUCTION',
            ),
            CategoryChose(
              callBack: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyInvestors(),
                  ),
                );
              },
              image: AppImage.myInvestorImage,
              title: 'MY INVESTORS',
            ),
            CategoryChose(
              image: AppImage.myLeadImage,
              title: 'MY LEAD',
            ),
            CategoryChose(
              image: AppImage.faqImage,
              title: 'FAQ',
            ),
            CategoryChose(
              callBack: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LogInPage(),
                  ),
                );
              },
              image: AppImage.logOutImage,
              title: 'LOGOUT',
            ),
          ],
        ),
      ),
    );
  }
}
