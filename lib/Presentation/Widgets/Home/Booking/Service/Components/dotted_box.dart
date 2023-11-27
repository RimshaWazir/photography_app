import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_2/Data/Datasource/Extensions/extensions.dart';
import 'package:task_2/Data/Datasource/Resources/asset.dart';
import 'package:task_2/Data/Datasource/Resources/color.dart';
import 'package:task_2/Data/Datasource/Resources/strings.dart';
import 'package:task_2/Data/Datasource/Resources/styles.dart';

class DottedBorderBox extends StatelessWidget {
  const DottedBorderBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.loose, clipBehavior: Clip.none, children: [
      DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(12),
        dashPattern: const [10, 10],
        color: Colors.grey,
        strokeWidth: 2,
        child: Container(
          height: 0.75.sh,
          width: 0.9.sw,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.blackColor.withOpacity(0.05)),
          child: Padding(
            padding: EdgeInsets.all(20.sp),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        AppStrings.wedding,
                        style: Styles.circularStd(
                          context,
                          fontSize: 18,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        AppStrings.dateValue,
                        style: Styles.circularStd(
                          context,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  5.y,
                  Text(
                    AppStrings.russelAddress,
                    style: Styles.circularStd(
                      context,
                      fontSize: 13,
                    ),
                  ),
                  22.y,
                  const Divider(),
                  33.y,
                  Row(
                    children: [
                      Text(
                        AppStrings.name,
                        style: Styles.smallCircularStd(
                          context,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 0.025.sh,
                          width: 0.2.sw,
                          decoration: BoxDecoration(
                              color: AppColors.orange,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(
                              AppStrings.pending,
                              style: Styles.smallCircularStd(context,
                                  color: AppColors.whiteColor),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Text(
                    AppStrings.nameValue,
                    style: Styles.circularStd(
                      context,
                      fontSize: 16,
                    ),
                  ),
                  15.y,
                  Text(
                    AppStrings.email,
                    style: Styles.smallCircularStd(
                      context,
                    ),
                  ),
                  Text(
                    AppStrings.rimshEmail,
                    style: Styles.circularStd(
                      context,
                      fontSize: 16,
                    ),
                  ),
                  15.y,
                  Text(
                    AppStrings.phoneNumber,
                    style: Styles.smallCircularStd(
                      context,
                    ),
                  ),
                  Text(
                    AppStrings.phoneValue,
                    style: Styles.circularStd(
                      context,
                      fontSize: 16,
                    ),
                  ),
                  15.y,
                  Text(
                    AppStrings.thrilled,
                    style: Styles.smallCircularStd(
                      fontSize: 16,
                      context,
                    ),
                  ),
                  15.y,
                  Container(
                    height: 0.15.sh,
                    width: 0.5.sw,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(Assets.image1))),
                  ),
                  20.y,
                ],
              ),
            ),
          ),
        ),
      ),
      const Positioned(left: 0, right: -310, top: 80, child: Eclipse()),
      const Positioned(right: 0, left: -310, top: 80, child: Eclipse())
    ]);
  }
}

class Eclipse extends StatelessWidget {
  const Eclipse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: AppColors.whiteColor),
      height: 30,
    );
  }
}
