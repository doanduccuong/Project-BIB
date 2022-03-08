import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final TextStyle? style;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final ShapeBorder? shape;
  RoundedButton(
      {required this.text,
      this.onPressed,
      this.padding,
      this.style,
      this.backgroundColor = const Color(0xff17c6bc),
      this.shape});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(40)),
      child: MaterialButton(
        onPressed: onPressed,
        child: Padding(
          padding: padding ?? const EdgeInsets.all(8.0),
          child: Text(text,
              style: theme.textTheme.button
                  ?.copyWith(color: Colors.white)
                  .merge(style)),
        ),
        // color: backgroundColor ?? theme.accentColor,
        shape: shape ?? null,
      ),
    );
  }
}
