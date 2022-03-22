import 'package:base_flutter/commands/base_command.dart';
import 'package:flutter/material.dart';
import '../../../../../../components/text_normal.dart';
import '../../../../../../configs/colors.dart';
import '../../../../../../widget/button.dart';
import '../../provider/register_provider.dart';

class RoleField extends StatelessWidget {
  final String sales;
  final String supervisor;
  RoleField({Key? key, required this.sales, required this.supervisor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var watch = Provider.of<RegisterProvider>(context, listen: true);
    var read = Provider.of<RegisterProvider>(context, listen: false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextNormal(
          title: 'Role',
          colors: AppColors.aPrimaryColor,
        ),
        Row(
          children: [
            Button(
              borderColor: watch.roleSelected == sales
                  ? AppColors.mainBackGroundColor
                  : null,
              callBack: () {
                read.selectRole(sales);
              },
              title: sales,
              backGroundColor: watch.roleSelected == sales
                  ? Colors.transparent
                  : Color(0xFFF4F4F9),
              height: 35,
              width: 167,
              textColor: watch.roleSelected == sales
                  ? AppColors.mainBackGroundColor
                  : AppColors.textColorGrey2,
            ),
            SizedBox(
              width: 2,
            ),
            Button(
              borderColor:
                  watch.roleSelected == supervisor
                      ? AppColors.mainBackGroundColor
                      : null,
              callBack: () {
                read.selectRole(supervisor);
              },
              title: supervisor,
              backGroundColor:
                  watch.roleSelected == supervisor
                      ? Colors.transparent
                      : Color(0xFFF4F4F9),
              height: 35,
              width: 167,
              textColor:
                  watch.roleSelected == supervisor
                      ? AppColors.mainBackGroundColor
                      : AppColors.textColorGrey2,
            ),
          ],
        ),
      ],
    );
  }
}
