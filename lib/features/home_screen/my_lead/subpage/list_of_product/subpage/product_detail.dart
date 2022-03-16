import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/widget/app_scaffold.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    _tabController=TabController(length: 3, vsync: this);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backGroundColor: AppColors.secondBackGroundColor,
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      title: 'Product Detail',
      bodyWidget: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: 106,
            width: 335,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: AppColors.fillColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextBold(
                  title: 'Manulife Saham Andalan',
                  size: 12,
                  colors: AppColors.textPrimaryColor,
                ),
                TextBold(
                  title: 'Manulife Saham Andalan',
                  size: 12,
                  colors: AppColors.textPrimaryColor,
                ),
                TextBold(
                  title: 'Manulife Saham Andalan',
                  size: 12,
                  colors: AppColors.textPrimaryColor,
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 26,
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: AppColors.textSubduedColor,
              labelColor: AppColors.textPrimaryColor,
              indicatorColor: AppColors.ePrimaryColor,
              controller: _tabController,
              tabs: [
                Tab(
                  text: 'Performance',
                ),
                Tab(
                  text: 'Product information',
                ),
                Tab(
                  text: 'Asset allocation',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
