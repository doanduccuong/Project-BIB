import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/authentication/views/register/widget/required_title.dart';
import 'package:base_flutter/shared/extensions/regex_phone_number.dart';
import 'package:base_flutter/features/home_screen/my_investors/subpage/transaction_detail/edit_investor/widget/form_design.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MobileNumberField extends StatelessWidget {
  final FocusNode requestFocusNode;
  final TextEditingController mobileNumberController;
  final FocusNode mobileNumberFocusNode;
  MobileNumberField(
      {Key? key,
      required this.requestFocusNode,
      required this.mobileNumberController,
      required this.mobileNumberFocusNode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maskFormatter = new MaskTextInputFormatter(
        mask: '##-####-####',
        filter: {"#": RegExp(r'[0-14]')},
        type: MaskAutoCompletionType.lazy);
    return FormDesign(
      controller: mobileNumberController,
      title: 'Mobile Number',
      inputFormat: [maskFormatter],
      validator: (input) =>
          input!.isValidPhoneNumber() ? null : "Error phone number",
    );
    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     // RequiredTitle(title: 'Mobile Number'),
    //     IntlPhoneField(
    //       style: TextStyle(
    //         color: AppColors.textPrimaryColor,
    //         fontSize: 14,
    //         fontWeight: FontWeight.w500,
    //       ),
    //       onTap: () {},
    //       autovalidateMode: AutovalidateMode.disabled,
    //       controller: mobileNumberController,
    //       dropdownIconPosition: IconPosition.trailing,
    //       focusNode: mobileNumberFocusNode,
    //       disableLengthCheck: true,
    //       showCountryFlag: false,
    //       inputFormatters: [maskFormatter],
    //       validator: (value) {
    //         return value!.length<10 ? 'Enter a mobile phone number' : null;
    //       },
    //       dropdownTextStyle: TextStyle(
    //         color: Color(0xFF1D2029),
    //         fontSize: 12,
    //         fontWeight: FontWeight.w500,
    //       ),
    //       decoration: InputDecoration(
    //         border: OutlineInputBorder(
    //           borderSide: BorderSide.none,
    //         ),
    //       ),
    //       initialCountryCode: 'IN',
    //       onSubmitted: (input) =>
    //           FocusScope.of(context).requestFocus(requestFocusNode),
    //       onChanged: (phone) {
    //         print(phone.completeNumber);
    //       },
    //     )
    //   ],
    // );
  }
}
