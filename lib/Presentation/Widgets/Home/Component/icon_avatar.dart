import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_2/Data/Datasource/Resources/color.dart';

class IconAvatar extends StatelessWidget {
  IconData icons;
  Function()? ontap;
  IconAvatar({
    required this.icons,
    this.ontap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.sp,
      width: 30.sp,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: AppColors.greyColor),
      child: Center(
        child: IconButton(
          icon: Icon(icons),
          onPressed: ontap,
          iconSize: 20,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
