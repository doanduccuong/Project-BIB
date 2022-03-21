import 'package:base_flutter/extention/regex_phone_number.dart';
import 'package:base_flutter/features/home_screen/my_investors/subpage/transaction_detail/edit_investor/widget/form_design.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';



class MobileNumberField extends StatelessWidget {
  final FocusNode requestFocusNode;
  final TextEditingController mobileNumberController;
  final FocusNode mobileNumberFocusNode;
  MobileNumberField({
    Key? key,
    required this.requestFocusNode,
    required this.mobileNumberController,
    required this.mobileNumberFocusNode
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  maskFormatter = new MaskTextInputFormatter(
    mask: '##-####-####',
    filter: { "#": RegExp(r'[0-14]') },
    type: MaskAutoCompletionType.lazy
    );
    return Column(
      children: [
        FormDesign(
        onEditingComplete: () => FocusScope.of(context).requestFocus(requestFocusNode),
          focusNode: mobileNumberFocusNode,
          validator: (input) =>
          input!.isValidPhoneNumber() ? null : "Error phone number",
          controller: mobileNumberController,
          title: 'Mobile Number',
          inputFormat: [maskFormatter],
        )
        // RequiredTitle(title: 'Mobile Number'),
        // SizedBox(
        //   height: 22,
        // ),
        // Container(
        //   height: 27,
        //   width: 335,
        //   child: IntlPhoneField(
        //     autovalidateMode: AutovalidateMode.disabled,
        //     controller: _mobileNumberController,
        //     dropdownIconPosition: IconPosition.trailing,
        //     disableLengthCheck: true,
        //     showCountryFlag: false,
        //     decoration: InputDecoration(
        //       errorText: context
        //           .watch<RegisterProvider>()
        //           .isValidatePhoneNumber ==
        //           true
        //           ? null
        //           : 'Error phone number',
        //       border: OutlineInputBorder(borderSide: BorderSide.none),
        //     ),
        //     onChanged: (phone) {
        //       print(phone.completeNumber);
        //     },
        //   ),
        // ),
        // Divider(
        //   thickness: 1,
        // ),
      ],
    );
  }
}
