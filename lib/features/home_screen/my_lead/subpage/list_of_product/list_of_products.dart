import 'package:base_flutter/features/home_screen/my_lead/subpage/list_of_product/subpage/product_detail.dart';
import 'package:base_flutter/widget/app_scaffold.dart';
import 'package:base_flutter/widget/button.dart';
import 'package:flutter/material.dart';

class ListOfProducts extends StatelessWidget {
  const ListOfProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(title: 'List of products', bodyWidget: Container(
      child: Button(title: 'Go Product detail',callBack: ()=> Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ProductDetail(),
        ),
      ),),
    ));
  }
}
