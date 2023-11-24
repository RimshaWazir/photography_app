import 'package:flutter/material.dart';
import 'package:task_2/Data/Datasource/Resources/color.dart';
import 'package:task_2/Data/Datasource/Resources/styles.dart';

import '../../../../Data/Datasource/Resources/strings.dart';

class CutomApbar extends StatelessWidget {
  const CutomApbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
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
      IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
          ))
    ]);
  }
}
