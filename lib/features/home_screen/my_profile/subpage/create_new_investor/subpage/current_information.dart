import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/features/home_screen/my_investors/subpage/transaction_detail/edit_investor/widget/form_design.dart';
import 'package:flutter/material.dart';

class CurrentInformation extends StatelessWidget {
  final TextEditingController companyNameController;
  final TextEditingController domicileController;
  final TextEditingController npwpController;
  final TextEditingController npwpDateController;
  final TextEditingController countryController;
  final TextEditingController placeController;
  final TextEditingController dateController;
  CurrentInformation({
    Key? key,
    required this.companyNameController,
    required this.domicileController,
    required this.npwpController,
    required this.npwpDateController,
    required this.countryController,
    required this.placeController,
    required this.dateController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextBold(title: 'Personal Information', size: 14),
          ],
        ),
        FormDesign(
          controller: companyNameController,
          title: 'Company Name',
        ),
        FormDesign(
          controller: domicileController,
          title: 'Country of Domicile',
        ),
        FormDesign(
          controller: npwpController,
          title: 'NPWP No',
        ),
        FormDesign(
          controller: npwpDateController,
          title: 'NPWP Registration Date',
        ),
        FormDesign(
          controller: placeController,
          title: 'Country of Establishment',
        ),
        FormDesign(
          controller: dateController,
          title: 'Place of Establishment',
        ),
      ],
    );
  }
}
