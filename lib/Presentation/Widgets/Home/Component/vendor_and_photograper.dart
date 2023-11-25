import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_2/Application/Services/Navigation/navigation.dart';
import 'package:task_2/Data/Datasource/Extensions/extensions.dart';
import 'package:task_2/Data/Datasource/Resources/color.dart';
import 'package:task_2/Data/Datasource/Resources/strings.dart';
import 'package:task_2/Data/Datasource/Resources/styles.dart';
import 'package:task_2/Presentation/Widgets/Auth/Componenet/button.dart';
import 'package:task_2/Presentation/Widgets/Home/Component/icon_avatar.dart';
import 'package:task_2/Presentation/Widgets/Home/detail_screen.dart';

// ignore: must_be_immutable
class VendorsAndPhotographerColumn extends StatelessWidget {
  VendorsAndPhotographerColumn({
    super.key,
    required this.heading,
    required this.cardTextList,
    this.cardImageList,
    this.subHeading,
    required this.cardSubText,
  });
  String? heading;

  String? subHeading;

  final List<String> cardTextList;

  final List<String>? cardImageList;
  final List<String> cardSubText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading!,
          style: Styles.circularStd(context, fontSize: 18),
        ),
        10.y,
        SizedBox(
          width: 1.sw,
          height: 0.3.sh,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: cardTextList.length,
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigate.push(context,
                      DetailScreen(selectedImage: cardImageList![index]));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 0.2.sh,
                        width: 0.6.sw,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(cardImageList![index]))),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const TextContainer(),
                              const Spacer(),
                              IconAvatar(
                                icons: Icons.favorite_outline_outlined,
                                ontap: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                      10.y,
                      Text(
                        cardTextList[index],
                        style: Styles.circularStd(
                          context,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      6.y,
                      Text(
                        cardSubText[index],
                        style: Styles.circularStd(context,
                            fontSize: 12, color: AppColors.lightGreyColor),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Button(
          border: Border.all(color: AppColors.greyColor),
          color: Colors.transparent,
          text: subHeading!,
          textcolor: AppColors.greyColor,
          ontap: () {},
        ),
      ],
    );
  }
}

class TextContainer extends StatelessWidget {
  const TextContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23.sp,
      width: 53.sp,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: AppColors.blue),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9),
        child: Row(
          children: [
            const Icon(Icons.star, size: 12, color: AppColors.whiteColor),
            const Spacer(),
            Text(
              AppStrings.ratingRate,
              style: Styles.circularStd(context,
                  fontSize: 14, color: AppColors.whiteColor),
            )
          ],
        ),
      ),
    );
  }
}
