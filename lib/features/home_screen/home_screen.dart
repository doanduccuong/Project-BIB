import 'dart:async';
import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/components/text_normal.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/configs/images.dart';
import 'package:base_flutter/features/authentication/views/login_page/login_page.dart';
import 'package:base_flutter/features/home_screen/cubit/home_screen_cubit.dart';
import 'package:base_flutter/features/home_screen/cubit/home_screen_cutbit_logic.dart';
import 'package:base_flutter/features/home_screen/drawer_field/drawer_field.dart';
import 'package:base_flutter/features/home_screen/widget/list_container.dart';
import 'package:base_flutter/features/home_screen/widget/menu_icon.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Timer _timer;
  @override
  void initState() {
    super.initState();
    _initializeTimer();
  }

  void _initializeTimer() {
    print("start timer");
    _timer = Timer(const Duration(minutes: 10), _logOutUser);
  }
  void _handleUserInteraction([_]) {
    if (_timer.isActive) {
      print("Use had touch to the screen");
      _timer.cancel();
      return;
    }
    _timer.cancel();
    _timer = Timer(const Duration(minutes: 10), _logOutUser);
    _initializeTimer();
  }

  void _logOutUser() {
    print("the user has been logout");
    _timer.cancel();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LogInPage(),
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeScreenCubit>(
      create: (BuildContext context)=>HomeScreenCubit(),
      child: HomeScreenCubitLogic(),
    );
  }
}
