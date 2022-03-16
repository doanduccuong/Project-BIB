import 'package:base_flutter/features/home_screen/my_investors/subpage/transaction_detail/edit_investor/widget/form_design.dart';
import 'package:base_flutter/widget/app_scaffold.dart';
import 'package:flutter/material.dart';

class CreateNewLead extends StatefulWidget {
  const CreateNewLead({Key? key}) : super(key: key);

  @override
  State<CreateNewLead> createState() => _CreateNewLeadState();
}

class _CreateNewLeadState extends State<CreateNewLead> {
  late TextEditingController _fullNameController;
  late TextEditingController _emailController;
  late TextEditingController _mobileNumberController;

  @override
  void initState() {
    _fullNameController=TextEditingController();
    _emailController=TextEditingController();
    _mobileNumberController=TextEditingController();
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _mobileNumberController.dispose();

    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: EdgeInsets.only(top: 20,left: 20,right: 20),
      title: 'Create new lead',
      bodyWidget: Column(
        children: [
          FormDesign(controller: _fullNameController, title: 'Full Name'),
          FormDesign(controller: _emailController, title: 'Email'),
          FormDesign(controller: _mobileNumberController, title: 'Mobile Number')
        ],
      ),
    );
  }
}
