import 'package:flutter/material.dart';
import 'package:marklit/common/constant.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget text;
  final Color backgroundColor;
  final bool? border;
  final double height;
  final double width;
  const ButtonWidget(
      {super.key,
      this.onPressed,
      required this.text,
      required this.backgroundColor,  this.border,  required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: border??true ?  const BorderSide(
                color: gainsBoroColor, width: 1): BorderSide.none,
          )
        ),
        child: text,
      ),
    );
  }
}
