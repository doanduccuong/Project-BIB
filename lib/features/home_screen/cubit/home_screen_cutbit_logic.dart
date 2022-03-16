import 'package:base_flutter/features/home_screen/cubit/home_screen_cubit.dart';
import 'package:base_flutter/features/home_screen/cubit/home_screen_cutbit_states.dart';
import 'package:base_flutter/features/home_screen/drawer_field/drawer_field.dart';
import 'package:base_flutter/features/home_screen/faq/faq.dart';
import 'package:base_flutter/features/home_screen/my_instruction/my_instruction.dart';

import 'package:base_flutter/features/home_screen/my_investors/my_investor.dart';
import 'package:base_flutter/features/home_screen/my_lead/my_lead.dart';
import 'package:base_flutter/features/home_screen/my_lead/subpage/list_of_product/list_of_products.dart';
import 'package:base_flutter/features/home_screen/my_profile/my_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenCubitLogic extends StatefulWidget {
  const HomeScreenCubitLogic({Key? key}) : super(key: key);

  @override
  State<HomeScreenCubitLogic> createState() => _HomeScreenCubitLogicState();
}

class _HomeScreenCubitLogicState extends State<HomeScreenCubitLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<HomeScreenCubit>(
        create: (BuildContext context)=>HomeScreenCubit(),
        child: BlocBuilder<HomeScreenCubit,HomeScreenState>(
          builder: (context,state){
            if(state is MyProfileState){
              return MyProfile();
            }
            if(state is MyInvestorsState){
              return MyInvestors();
            }
            if(state is MyLeadState){
              return MyLead();
            }
            if(state is MyInstructionState){
              return MyInstruction();
            }
            if(state is FAQState){
              return FAQ();
            }
            else{
              return Container(color: Colors.red,);
            }
          },
        ),
      ),

    );
  }
}
