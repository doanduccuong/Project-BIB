import 'package:base_flutter/components/text_bold.dart';
import 'package:flutter/material.dart';
class GraphField extends StatelessWidget {
  const GraphField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextBold(title: "This is graph",size: 30,colors: Colors.red,),
    );
  }
}
