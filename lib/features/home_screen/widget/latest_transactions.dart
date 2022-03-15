import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/configs/colors.dart';

import 'package:base_flutter/features/home_screen/my_investors/subpage/transaction_list/transaction_list.dart';
import 'package:flutter/material.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>  TransactionList(),
          ),
        );
      },
      child: Card(
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.textColor,
              borderRadius: BorderRadius.circular(10)),
          height: 190,
          width: 335,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: TextBold(
                  title: 'Latest Transactions',
                  size: 16,
                  colors: AppColors.textPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
