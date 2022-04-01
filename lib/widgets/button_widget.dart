import 'package:flutter/cupertino.dart';

class ButtonWidget extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;

  const ButtonWidget(
      {Key? key,
      required this.backgroundColor,
      required this.textColor,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 70,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 25, color: textColor),
        ),
      ),
    );
  }
}
