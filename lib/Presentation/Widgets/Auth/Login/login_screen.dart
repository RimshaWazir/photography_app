import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_2/Application/Services/Navigation/navigation.dart';
import 'package:task_2/Data/Datasource/Extensions/extensions.dart';
import 'package:task_2/Data/Datasource/Resources/asset.dart';
import 'package:task_2/Data/Datasource/Resources/color.dart';
import 'package:task_2/Data/Datasource/Resources/strings.dart';
import 'package:task_2/Data/Datasource/Resources/styles.dart';
import 'package:task_2/Presentation/Widgets/Auth/Componenet/button.dart';
import 'package:task_2/Presentation/Widgets/Auth/Componenet/login_bottom.dart';
import 'package:task_2/Presentation/Widgets/Home/home_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final controller = PageController(viewportFraction: 0.9, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
      3,
      (index) => Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 24, bottom: 50),
          child: Text(
            AppStrings.weddingWonders,
            style: Styles.circularStd(
              context,
              fontSize: 26,
              color: AppColors.whiteColor,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );

    Timer.periodic(const Duration(seconds: 6), (Timer timer) {
      if (controller.page == pages.length - 1) {
        controller.animateToPage(
          0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else {
        controller.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });

    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
      Stack(
        children: [
          Container(
            height: 0.6.sh,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(Assets.loginBackground),
              ),
            ),
            child: PageView.builder(
              controller: controller,
              itemCount: pages.length,
              itemBuilder: (_, index) {
                return pages[index % pages.length];
              },
            ),
          ),
          Positioned(
            bottom: 20.0,
            left: 160,
            right: 0,
            child: SmoothPageIndicator(
              controller: controller,
              count: pages.length,
              effect: const WormEffect(
                activeDotColor: AppColors.whiteColor,
                dotHeight: 10,
                dotWidth: 10,
                type: WormType.thinUnderground,
              ),
            ),
          ),
        ],
      ),
      52.y,
      Button(
        color: AppColors.blue,
        text: AppStrings.login,
        textcolor: AppColors.whiteColor,
        ontap: () {
          Navigate.pushReplacement(
            context,
            HomeScreen(),
          );
        },
      ),
      25.y,
      Button(
        border: Border.all(color: AppColors.greyColor),
        color: Colors.transparent,
        text: AppStrings.signUp,
        textcolor: AppColors.blackColor,
        ontap: () {},
      ),
      26.y,
      const LoginBottomText(),
      17.y
    ]))));
  }
}
