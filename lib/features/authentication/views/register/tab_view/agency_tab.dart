import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/authentication/views/register/provider/register_provider.dart';
import 'package:base_flutter/features/authentication/views/register/widget/required_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class AgencyTab extends StatelessWidget {
  const AgencyTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 22, left: 20),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.fillColor,width: 3),
      ),
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              height: 85,
              width: 275,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RequiredTitle(
                    title: 'Company Name',
                    isRequired: false,
                  ),
                  TextFormField(
                    controller:
                        context.watch<RegisterProvider>().companyController,
                  )
                ],
              ),
            );
          }),
    );
  }
}
