import 'package:flutter/material.dart';
import 'package:hyper_ui/shared/theme/theme_config.dart';

class QOutlineButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final double? width;
  final double? height;
  final double? fontSize;

  QOutlineButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.height,
    this.fontSize,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? 48,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            foregroundColor: Colors.green,
            side: BorderSide(
              color: primaryColor,
              width: 2,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () => onPressed(),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSize ?? 16.0,
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
