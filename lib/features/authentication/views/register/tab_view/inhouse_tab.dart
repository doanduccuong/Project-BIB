import 'package:base_flutter/configs/colors.dart';

import 'package:base_flutter/features/authentication/views/register/widget/required_title.dart';
import 'package:flutter/material.dart';

class InHouseTab extends StatelessWidget {
  final TextEditingController companyController;
   InHouseTab({Key? key,required this.companyController,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 22),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent,width: 3),
      ),
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context,index){
            return Container(

              height: 85,
              width: 275,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 22.5,),
                  RequiredTitle(title: 'Company Name',isRequired: false,),
                  TextFormField(
                    controller: companyController,
                  )
                ],
              ),
            );
          }),
    );
  }
}
