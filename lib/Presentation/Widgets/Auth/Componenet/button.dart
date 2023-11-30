import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  final Function() ontap;
  final BoxBorder? border;
  final String text;
  final Color color;
  final Color textcolor;
  const Button({
    this.border,
    required this.ontap,
    required this.color,
    required this.text,
    required this.textcolor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            border: border,
            color: color,
            borderRadius: BorderRadius.circular(10)),
        width: 0.9.sw,
        height: 0.07.sh,
        child: Center(child: Text(text, style: TextStyle(color: textcolor))),
      ),
    );
  }
}
