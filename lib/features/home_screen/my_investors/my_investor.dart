import 'package:base_flutter/features/home_screen/cubit/home_screen_cubit.dart';
import 'package:base_flutter/features/home_screen/widget/graphic_info.dart';
import 'package:base_flutter/features/home_screen/widget/latest_transactions.dart';
import 'package:base_flutter/features/home_screen/widget/product_list.dart';
import 'package:base_flutter/widget/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyInvestors extends StatelessWidget {
  const MyInvestors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: ()=>BlocProvider.of<HomeScreenCubit>(context).goHomeScreen(),
      ),
      padding: EdgeInsets.only(left: 25),
      backGroundColor: Color(0xFFF5F5FC),
      bodyWidget: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            LatestTransactions(),
            SizedBox(
              height: 20,
            ),
            ProductList(),
            SizedBox(
              height: 20,
            ),
            GraphicInfo(),
          ],
        ),
      ),
      title: 'My investors',
    );
  }
}
