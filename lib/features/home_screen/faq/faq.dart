import 'package:base_flutter/components/text_bold.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:flutter/cupertino.dart';

class FAQ extends StatelessWidget {
  const FAQ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextBold(title: 'This is FAQ', size: 40,colors: AppColors.startGradient,),
      ),
    );
  }
}
