import 'package:base_flutter/features/home_screen/cubit/home_screen_cubit.dart';
import 'package:base_flutter/features/home_screen/cubit/home_screen_cutbit_states.dart';
import 'package:base_flutter/features/home_screen/drawer_field/drawer_field.dart';
import 'package:base_flutter/features/home_screen/my_profile/my_profile_bottom_bar/provider/my_profile_bottom_bar_provider.dart';
import 'package:base_flutter/features/home_screen/my_profile/my_profile_tab/investors_tab.dart';
import 'package:base_flutter/features/home_screen/my_profile/my_profile_tab/leads_tab.dart';
import 'package:base_flutter/features/home_screen/my_profile/my_profile_tab/transactuion_tab.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core_packages.dart';

import 'my_profile_bottom_bar/my_profile_bottom_bar.dart';
import 'my_profile_tab/report_tab.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
      builder: (context, state) {
        if (state is MyProfileState) {
          return Scaffold(
            drawerEnableOpenDragGesture: true,
            backgroundColor: Color(0xFFEEF0F6),
            body: _widgetOptions[
                Provider.of<MyProfileBottomBarProvider>(context).currentIndex],
            drawer: DrawerField(
              currentState: state,
            ),
            bottomNavigationBar: MyProfileBottomBar(),
          );
        } else {
          return Container(
            color: Colors.red,
          );
        }
      },
    );
  }

  static const List<Widget> _widgetOptions = <Widget>[
    InvestorTab(),
    TransactionTab(),
    LeadsTab(),
    ReportTab()
  ];
}
