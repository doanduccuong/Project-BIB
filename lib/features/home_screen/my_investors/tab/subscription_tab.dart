import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/home_screen/my_investors/subpage/transaction_detail/transaction_detail.dart';
import 'package:base_flutter/features/home_screen/my_investors/subpage/transaction_list/provider/transaction_list_provider.dart';
import 'package:base_flutter/features/home_screen/my_investors/tab/widget/product_status.dart';

import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class SubscriptionTab extends StatelessWidget {
  const SubscriptionTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Button(
                callBack: () =>
                    context.read<TransactionListProvider>().onSelected(0),
                title: 'Semua',
                backGroundColor:
                    context.watch<TransactionListProvider>().selectedIndex == 0
                        ? Colors.transparent
                        : Color(0xFFE9EAF9),
                borderColor:
                    context.watch<TransactionListProvider>().selectedIndex == 0
                        ? AppColors.mainBackGroundColor
                        : null,
                textSize: 12,
                textColor:
                    context.watch<TransactionListProvider>().selectedIndex == 0
                        ? AppColors.mainBackGroundColor
                        : Color(0xFF2F323D),
                height: 26,
                width: 63,
              ),
              SizedBox(
                width: 10,
              ),
              Button(
                callBack: () =>
                    context.read<TransactionListProvider>().onSelected(1),
                title: 'Menunggu Pembayaran',
                borderColor:
                    context.watch<TransactionListProvider>().selectedIndex == 1
                        ? AppColors.mainBackGroundColor
                        : null,
                backGroundColor:
                    context.watch<TransactionListProvider>().selectedIndex == 1
                        ? Colors.transparent
                        : Color(0xFFE9EAF9),
                textSize: 12,
                textColor:
                    context.watch<TransactionListProvider>().selectedIndex == 1
                        ? AppColors.mainBackGroundColor
                        : Color(0xFF2F323D),
                height: 26,
                width: 167,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TransactionDetail(),
                    ),
                  ),
              child: ProductStatus())
        ],
      ),
    );
  }
}
