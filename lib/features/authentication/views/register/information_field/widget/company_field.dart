import 'package:base_flutter/features/authentication/views/register/provider/register_provider.dart';
import 'package:base_flutter/features/authentication/views/register/register.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';

import '../../../../../../commands/base_command.dart';
import '../../../../../../components/text_normal.dart';
import '../../../../../../configs/colors.dart';
import '../../tab_view/agency_tab.dart';
import '../../tab_view/inhouse_tab.dart';
import '../utilities/utilities.dart';

class CompanyField extends StatelessWidget {
  final TabController tabController;
  final TextEditingController companyController;
  final String inHouse;
  final String agency;
  int selectedTab;
  CompanyField({
    Key? key,
    required this.tabController,
    required this.inHouse,
    required this.agency,
    required this.companyController,
    required this.selectedTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextNormal(
          title: 'Company',
          colors: AppColors.aPrimaryColor,
          size: 12,
        ),
        Row(
          children: [
            Button(
              borderColor: context.watch<RegisterProvider>().companySelected == inHouse?AppColors.mainBackGroundColor:null,
              backGroundColor:
              context.watch<RegisterProvider>().companySelected == inHouse
                  ? Colors.transparent
                  : Color(0xFFF4F4F9),
              height: 35,
              width: 167,
              textColor: context.watch<RegisterProvider>().companySelected == inHouse
                  ? AppColors.mainBackGroundColor
                  : AppColors.textColorGrey2,
              title: inHouse,
              callBack: () => Provider.of<RegisterProvider>(context,listen: false)
                  .selectCompany(inHouse),
            ),
            SizedBox(
              width: 2,
            ),
            Button(
              borderColor: context.watch<RegisterProvider>().companySelected == agency?AppColors.mainBackGroundColor:null,
              backGroundColor:
              context.watch<RegisterProvider>().companySelected == agency
                  ? Colors.transparent
                  : Color(0xFFF4F4F9),
              height: 35,
              width: 167,
              textColor: context.watch<RegisterProvider>().companySelected == agency
                  ? AppColors.mainBackGroundColor
                  : AppColors.textColorGrey2,
              title: agency,
              callBack: () => Provider.of<RegisterProvider>(context,listen: false)
                  .selectCompany(agency),
            ),
          ],
        )
        // Container(
        //   width: 334,
        //   height: 34.52,
        //   child: TabBar(
        //     unselectedLabelColor: AppColors.bPrimaryColor,
        //     labelColor: AppColors.startGradient,
        //     indicatorColor: AppColors.dPrimaryColor,
        //     controller: tabController,
        //     labelPadding: const EdgeInsets.all(0.0),
        //     tabs: [
        //       Utility().getTab(
        //         0,
        //         Text('Inhouse'),
        //         selectedTab,
        //       ),
        //       Utility().getTab(
        //         0,
        //         Text('Agency'),
        //         selectedTab,
        //       ),
        //     ],
        //   ),
        // ),
        // Container(
        //   padding: EdgeInsets.only(
        //     right: 20,
        //   ),
        //   height: 305.75,
        //   width: MediaQuery.of(context).size.width * 0.91,
        //   child: TabBarView(
        //     controller: tabController,
        //     children: [
        //       AgencyTab(companyController: companyController),
        //       InHouseTab(companyController: companyController)
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
