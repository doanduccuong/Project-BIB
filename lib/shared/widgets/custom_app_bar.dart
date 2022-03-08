import 'package:flutter/material.dart';
import 'dart:math';
import 'package:base_flutter/commands/navigate_back_command.dart';

AppBar customAppBar({
  Widget? title,
  bool customBackButton = false,
}) {
  return AppBar(
    backgroundColor: Color(0xff17c6bc),
    elevation: 0,
    centerTitle: false,
    automaticallyImplyLeading: false,
    leading: customBackButton ? CustomBackButton() : null,
    title: title,
  );
}

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key, this.onPressed}) : super(key: key);

  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterialLocalizations(context));
    return IconButton(
      icon: Transform.rotate(
        angle: pi,
        child: Icon(
          Icons.play_arrow,
          size: 32,
        ),
      ),
      color: Colors.white,
      tooltip: MaterialLocalizations.of(context).backButtonTooltip,
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}
