import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_2/Data/Datasource/Extensions/extensions.dart';
import 'package:task_2/Data/Datasource/Resources/color.dart';
import 'package:task_2/Data/Datasource/Resources/strings.dart';
import 'package:task_2/Data/Datasource/Resources/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 47),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
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
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_outline)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                      )),
                ],
              ),
              Text(
                AppStrings.hi,
                style: Styles.circularStd(
                  context,
                ),
              ),
              24.y,
              Row(
                children: [
                  SizedBox(
                    width: 0.7.sw,
                    height: 0.07.sh,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.lightBrownColor.withOpacity(0.1),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: AppColors.greyColor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: AppColors.greyColor,
                          ),
                        ),
                        hintText: 'Search Vendor',
                        suffixIcon: Icon(
                          Icons.filter_list_alt,
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.blue),
                      height: 0.07.sh,
                      width: 0.14.sw,
                      child: const Icon(
                        Icons.search,
                        color: AppColors.whiteColor,
                      ))
                ],
              ),
              27.y,
              Text(
                AppStrings.category,
                style: Styles.circularStd(context, fontSize: 18),
              ),
              SizedBox(
                width: 1.sw,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 220,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    return Text('hy$index ');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
