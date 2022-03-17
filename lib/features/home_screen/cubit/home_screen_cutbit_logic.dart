import 'dart:async';

import 'package:base_flutter/features/authentication/views/login_page/login_page.dart';
import 'package:base_flutter/features/home_screen/cubit/home_screen_cubit.dart';
import 'package:base_flutter/features/home_screen/cubit/home_screen_cutbit_states.dart';

import 'package:base_flutter/features/home_screen/faq/faq.dart';
import 'package:base_flutter/features/home_screen/my_instruction/my_instruction.dart';

import 'package:base_flutter/features/home_screen/my_investors/my_investor.dart';
import 'package:base_flutter/features/home_screen/my_lead/my_lead.dart';

import 'package:base_flutter/features/home_screen/my_profile/my_profile.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenCubitLogic extends StatefulWidget {
  const HomeScreenCubitLogic({Key? key}) : super(key: key);

  @override
  State<HomeScreenCubitLogic> createState() => _HomeScreenCubitLogicState();
}

class _HomeScreenCubitLogicState extends State<HomeScreenCubitLogic> {
  late Timer _timer;
  @override
  void initState() {
    super.initState();

    _initializeTimer();
  }

  void _initializeTimer() {
    print("Timer start");
    _timer = Timer.periodic(const Duration(seconds: 10), (_) => _logOutUser);
  }

  void _logOutUser() {
    print("Log out user");
    _timer.cancel();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LogInPage(),
      ),
    );
  }

  void _handleUserInteraction([_]) {
    _timer.cancel();
    _initializeTimer();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanDown: _handleUserInteraction,
      onScaleStart: _handleUserInteraction,
      onTap: () => _handleUserInteraction,
      child: BlocProvider<HomeScreenCubit>(
        create: (BuildContext context) => HomeScreenCubit(),
        child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
          builder: (context, state) {
            if (state is MyProfileState) {
              return MyProfile();
            }
            if (state is MyInvestorsState) {
              return MyInvestors();
            }
            if (state is MyLeadState) {
              return MyLead();
            }
            if (state is MyInstructionState) {
              return MyInstruction();
            }
            if (state is FAQState) {
              return FAQ();
            } else {
              return Container(
                color: Colors.red,
              );
            }
          },
        ),
      ),
    );
  }
}
