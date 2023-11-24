import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_2/Data/Datasource/Extensions/extensions.dart';
import 'package:task_2/Data/Datasource/Resources/asset.dart';
import 'package:task_2/Data/Datasource/Resources/color.dart';
import 'package:task_2/Data/Datasource/Resources/strings.dart';
import 'package:task_2/Data/Datasource/Resources/styles.dart';

class RatingWidgets extends StatelessWidget {
  const RatingWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: 0.2.sh,
        width: 1.sw,
        decoration: BoxDecoration(
            color: AppColors.blue, borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            40.y,
            Text(
              AppStrings.rateApp,
              style: Styles.circularStd(context,
                  fontSize: 14, color: AppColors.whiteColor),
            ),
            5.y,
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) =>
                  const Icon(Icons.star, color: AppColors.whiteColor),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ],
        ),
      ),
      const Positioned(
          top: -50, left: 120, child: Image(image: AssetImage(Assets.star))),
    ]);
  }
}
