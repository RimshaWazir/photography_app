import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_2/Data/Datasource/Extensions/extensions.dart';
import 'package:task_2/Data/Datasource/Resources/color.dart';
import 'package:task_2/Data/Datasource/Resources/strings.dart';
import 'package:task_2/Data/Datasource/Resources/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.1.sh,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Text(
              AppStrings.londonUk,
              style: Styles.circularStd(context,
                  color: AppColors.blackColor, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.keyboard_arrow_down_outlined)),
            const Spacer(),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                ))
          ]),
          Text(AppStrings.hi,
              style: Styles.circularStd(
                context,
              )),
        ],
      ),
    );
  }
}
