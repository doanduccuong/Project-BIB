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
              borderColor: context.watch<RegisterProvider>().roleSelected == sales?AppColors.mainBackGroundColor:null,
              callBack: () {
                context.read<RegisterProvider>().selectRole(sales);
              },
              title: sales,
              backGroundColor:
                  context.watch<RegisterProvider>().roleSelected == sales
                      ? Colors.transparent
                      : Color(0xFFF4F4F9),
              height: 35,
              width: 167,
              textColor: context.watch<RegisterProvider>().roleSelected == sales
                  ? AppColors.mainBackGroundColor
                  : AppColors.textColorGrey2,
            ),
            SizedBox(
              width: 2,
            ),
            Button(
              borderColor: context.watch<RegisterProvider>().roleSelected == supervisor?AppColors.mainBackGroundColor:null,
              callBack: () {
                context.read<RegisterProvider>().selectRole(supervisor);
              },
              title: supervisor,
              backGroundColor:
                  context.watch<RegisterProvider>().roleSelected == supervisor
                      ? Colors.transparent
                      : Color(0xFFF4F4F9),
              height: 35,
              width: 167,
              textColor:
                  context.watch<RegisterProvider>().roleSelected == supervisor
                      ? AppColors.mainBackGroundColor
                      : AppColors.textColorGrey2,
            ),
          ],
        ),
      ],
    );
  }
}
