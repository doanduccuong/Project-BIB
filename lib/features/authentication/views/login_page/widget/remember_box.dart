
import 'package:base_flutter/features/authentication/views/login_page/provider/login_page_provider.dart';
import 'package:base_flutter/features/authentication/views/login_page/widget/tick_box.dart';
import 'package:base_flutter/features/authentication/views/login_page/widget/untick_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';


class RememberBox extends StatelessWidget {
  const RememberBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          context.read<LogInScreenProvider>().toggleTick();
        },
        child: context.watch<LogInScreenProvider>().isTick?tickBox():unTickBox()
    );
  }
}