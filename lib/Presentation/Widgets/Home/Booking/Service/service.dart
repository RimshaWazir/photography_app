import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_2/Data/Datasource/Extensions/extensions.dart';
import 'package:task_2/Data/Datasource/Resources/asset.dart';
import 'package:task_2/Data/Datasource/Resources/color.dart';
import 'package:task_2/Data/Datasource/Resources/styles.dart';
import 'package:task_2/Presentation/Widgets/Auth/Componenet/button.dart';

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
              Stack(clipBehavior: Clip.none, children: [
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
                            22.y,
                            const Divider(),
                            33.y,
                            Row(
                              children: [
                                Text(
                                  "Name",
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
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Center(
                                      child: Text(
                                        "Pending",
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
                              "Rimsha Wazir",
                              style: Styles.circularStd(
                                context,
                                fontSize: 16,
                              ),
                            ),
                            15.y,
                            Text(
                              "Email",
                              style: Styles.smallCircularStd(
                                context,
                              ),
                            ),
                            Text(
                              "rimsha.example@gmail.com",
                              style: Styles.circularStd(
                                context,
                                fontSize: 16,
                              ),
                            ),
                            15.y,
                            Text(
                              "Phone Number",
                              style: Styles.smallCircularStd(
                                context,
                              ),
                            ),
                            Text(
                              "+44 1632 960427",
                              style: Styles.circularStd(
                                context,
                                fontSize: 16,
                              ),
                            ),
                            15.y,
                            Text(
                              "Thrilled to announce that your magical day is officially reserved with us! Get ready to turn your love story into timeless moments through our lens. 📸✨",
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
                const Positioned(
                    left: 0, right: -310, top: 80, child: Eclipse()),
                const Positioned(
                    right: 0, left: -310, top: 80, child: Eclipse())
              ]),
              40.y,
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Button(
                        ontap: () {},
                        color: AppColors.whiteColor,
                        border: Border.all(),
                        text: "Goto Home",
                        textcolor: AppColors.blackColor),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 3,
                    child: Button(
                        ontap: () {},
                        color: AppColors.blue,
                        text: "Chat",
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
