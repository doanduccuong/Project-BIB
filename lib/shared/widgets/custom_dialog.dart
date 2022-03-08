import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final String? title;
  final String description;
  final Function()? confirmAction;

  const CustomDialog(
      {Key? key, this.title, this.confirmAction, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.transparent,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
        elevation: 0,
        child: Container(
            child: Column(children: [
          Expanded(child: Container()),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              color: Colors.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (title != null) Text(title ?? ''),
                    Text(description,
                        style:
                            TextStyle(color: Color(0xff707070), fontSize: 15),
                        textAlign: TextAlign.center),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                                height: 28,
                                child: OutlinedButton(
                                  child: Text('キャンセル',
                                      style:
                                          TextStyle(color: Color(0xff707070))),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ))),
                        if (confirmAction != null) SizedBox(width: 10),
                        if (confirmAction != null)
                          Expanded(
                              child: Container(
                                  height: 28,
                                  child: OutlinedButton(
                                    child: Text('OK',
                                        style: TextStyle(
                                            color: Color(0xff707070))),
                                    onPressed: confirmAction!,
                                  )))
                      ],
                    )
                  ])),
          Expanded(child: Container())
        ])));
  }
}
