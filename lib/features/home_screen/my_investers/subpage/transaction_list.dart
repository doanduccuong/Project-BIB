import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/home_screen/my_investers/tab/redemption_tab.dart';
import 'package:base_flutter/features/home_screen/my_investers/tab/subscription_tab.dart';
import 'package:base_flutter/features/home_screen/my_investers/tab/switch_tab.dart';
import 'package:base_flutter/widget/app_scaffold.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backGroundColor: AppColors.secondBackGroundColor,
      bodyWidget: Container(
        child: Column(
          children: [
            SizedBox(height: 19,),
            Container(
              height: 30,
              width: 350,
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: AppColors.textSubduedColor,
                labelColor: AppColors.textPrimaryColor,
                indicatorColor: AppColors.ePrimaryColor,
                controller: _tabController,
                tabs: [
                  Tab(
                    text: 'Subscription',
                  ),
                  Tab(
                    text: 'Redemption',
                  ),
                  Tab(
                    text: 'Switch',
                  )
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  SubscriptionTab(),
                  RedemptionTab(),
                  SwitchTab(),
                ],
              ),
            )
          ],
        ),
      ),
      title: ' Transaction list',
    );
  }
}
