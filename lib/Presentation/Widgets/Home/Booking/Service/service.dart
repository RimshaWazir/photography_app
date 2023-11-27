import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_2/Data/Datasource/Extensions/extensions.dart';
import 'package:task_2/Data/Datasource/Resources/asset.dart';
import 'package:task_2/Data/Datasource/Resources/color.dart';
import 'package:task_2/Data/Datasource/Resources/strings.dart';
import 'package:task_2/Data/Datasource/Resources/styles.dart';
import 'package:task_2/Presentation/Widgets/Auth/Componenet/button.dart';
import 'package:task_2/Presentation/Widgets/Home/Booking/Service/Components/dotted_box.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SafeArea(
            child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              40.y,
              Image.asset(
                Assets.service,
                fit: BoxFit.fill,
              ),
              20.y,
              Text(
                AppStrings.bookingNum,
                style: Styles.circularStd(
                  context,
                  fontSize: 16,
                ),
              ),
              5.y,
              Text(
                AppStrings.serviceBooked,
                style: Styles.circularStd(
                  context,
                  fontSize: 20,
                ),
              ),
              5.y,
              Text(
                AppStrings.success,
                style: Styles.circularStd(
                  context,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              18.y,
              const DottedBorderBox(),
              40.y,
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Button(
                        ontap: () {},
                        color: AppColors.whiteColor,
                        border: Border.all(),
                        text: AppStrings.gotoHome,
                        textcolor: AppColors.blackColor),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 3,
                    child: Button(
                        ontap: () {},
                        color: AppColors.blue,
                        text: AppStrings.chat,
                        textcolor: AppColors.whiteColor),
                  ),
                ],
              ),
              20.y
            ]),
          ),
        )));
  }
}
