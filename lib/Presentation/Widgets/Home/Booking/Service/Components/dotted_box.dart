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
    return Stack(
        fit: StackFit.loose,
        alignment: Alignment.topCenter,
        clipBehavior: Clip.hardEdge,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp),
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              dashPattern: const [10, 10],
              color: Colors.grey,
              strokeWidth: 2,
              child: Container(
                color: Colors.grey.withOpacity(0.3),
                padding: EdgeInsets.all(10.sp),
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
                            alignment: Alignment.center,
                            height: 20,
                            width: 85.w,
                            padding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 14),
                            decoration: BoxDecoration(
                                color: AppColors.orange,
                                borderRadius: BorderRadius.circular(30)),
                            child: Text(
                              AppStrings.pending,
                              textScaleFactor: 0.7,
                              maxLines: 1,
                              style: Styles.smallCircularStd(context,
                                  fontSize: 16, color: AppColors.whiteColor),
                              textAlign: TextAlign.center,
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
                  ],
                ),
              ),
            ),
          ),
          const Positioned(left: 0, top: 70, child: Eclipse()),
          const Positioned(right: 0, top: 70, child: Eclipse())
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
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      height: 30,
      width: 30,
    );
  }
}
