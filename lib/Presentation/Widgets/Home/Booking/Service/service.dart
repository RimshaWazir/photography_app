import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_2/Data/Datasource/Extensions/extensions.dart';
import 'package:task_2/Data/Datasource/Resources/asset.dart';
import 'package:task_2/Data/Datasource/Resources/color.dart';
import 'package:task_2/Data/Datasource/Resources/styles.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        90.y,
        Image.asset(
          Assets.icon,
        ),
        Text(
          "Booking #1253",
          style: Styles.circularStd(
            context,
            fontSize: 16,
          ),
        ),
        5.y,
        Text(
          "Service Booked",
          style: Styles.circularStd(
            context,
            fontSize: 20,
          ),
        ),
        5.y,
        Text(
          "You’ve successfully booked wedding photography service!",
          style: Styles.circularStd(
            context,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        18.y,
        DottedBorder(
          borderType: BorderType.RRect,
          radius: const Radius.circular(12),
          dashPattern: const [10, 10],
          color: Colors.grey,
          strokeWidth: 2,
          child: Container(
            height: 0.6.sh,
            width: 0.9.sw,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.blackColor.withOpacity(0.05)),
            child: Column(
              children: [
                21.y,
                Row(
                  children: [
                    Text(
                      "Wedding photography",
                      style: Styles.circularStd(
                        context,
                        fontSize: 18,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "12 Nov,2023",
                      style: Styles.circularStd(
                        context,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                5.y,
                Text(
                  "34 Russell Rd Shillingford St George, UK",
                  style: Styles.circularStd(
                    context,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    )));
  }
}
