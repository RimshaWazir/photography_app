import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_2/Application/Services/Navigation/navigation.dart';
import 'package:task_2/Data/Datasource/Extensions/extensions.dart';
import 'package:task_2/Data/Datasource/Resources/asset.dart';
import 'package:task_2/Data/Datasource/Resources/color.dart';
import 'package:task_2/Data/Datasource/Resources/strings.dart';
import 'package:task_2/Data/Datasource/Resources/styles.dart';
import 'package:task_2/Presentation/Widgets/Auth/Componenet/button.dart';
import 'package:task_2/Presentation/Widgets/Home/Booking/booking_screen.dart';
import 'package:task_2/Presentation/Widgets/Home/Component/custom_appbar.dart';
import 'package:task_2/Presentation/Widgets/Home/Component/vendor_and_photograper.dart';

import 'Component/rating_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> avatarTextList = [
    AppStrings.makeUp,
    AppStrings.photographers,
    AppStrings.categories,
    AppStrings.venue,
  ];
  final List<String> cardTextList = [
    AppStrings.epic,
    AppStrings.enchant,
    AppStrings.venue,
  ];
  final List<String> cardSubText = [
    AppStrings.islamabad,
    AppStrings.londonUk,
    AppStrings.korea,
  ];
  final List<String> avatarImageList = [
    Assets.makeup,
    Assets.photograph,
    Assets.wedding,
    Assets.viewall,
  ];
  final List<String> cardImageList = [
    Assets.image1,
    Assets.image2,
    Assets.loginBackground,
  ];
  final List<String> anotherCardImageList = [
    Assets.image3,
    Assets.image4,
    Assets.image1,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.whiteColor,
          body: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverAppBar(
                  automaticallyImplyLeading: true,
                  expandedHeight: 450,
                  elevation: 0,
                  snap: true,
                  floating: true,
                  pinned: true,
                  leading: const CustomAppBar(),
                  toolbarHeight: 80,
                  collapsedHeight: 80,
                  leadingWidth: MediaQuery.sizeOf(context).width,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.white,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: SizedBox(
                        width: 1.sw,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: 0.7.sw,
                                  height: 55.h,
                                  child: TextField(
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: AppColors.lightBrownColor
                                              .withOpacity(0.1),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              borderSide: BorderSide(
                                                color: AppColors.greyColor,
                                              )),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              borderSide: BorderSide(
                                                color: AppColors.greyColor,
                                              )),
                                          hintText: AppStrings.searchVendor,
                                          suffixIcon: Icon(
                                            Icons.filter_list_alt,
                                            color: AppColors.greyColor,
                                          )))),
                              // const Spacer(),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: AppColors.blue),
                                  height: 55.h,
                                  width: 0.14.sw,
                                  child: const Icon(
                                    Icons.search,
                                    color: AppColors.whiteColor,
                                  ))
                            ]),
                      ),
                    ),
                  ),
                  bottom: AppBar(
                    toolbarHeight: 170,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                    actions: [
                      SizedBox(
                        width: 1.sw,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.category,
                              style: Styles.circularStd(context, fontSize: 18),
                            ),
                            SizedBox(
                                width: 1.sw,
                                height: 80.h,
                                child: ListView.separated(
                                    physics: const BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: avatarTextList.length,
                                    separatorBuilder:
                                        (BuildContext context, int index) =>
                                            const SizedBox(),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4, vertical: 4),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  maxRadius: 27.r,
                                                  backgroundImage: AssetImage(
                                                    avatarImageList[index],
                                                  ),
                                                  child: index ==
                                                          avatarTextList
                                                                  .length -
                                                              1
                                                      ? Center(
                                                          child: TextButton(
                                                            child: Text(
                                                                AppStrings
                                                                    .veiewAll,
                                                                style: Styles.circularStd(
                                                                    context,
                                                                    fontSize:
                                                                        10,
                                                                    color: AppColors
                                                                        .whiteColor),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center),
                                                            onPressed: () {},
                                                          ),
                                                        )
                                                      : null,
                                                ),
                                                5.y,
                                                Text(avatarTextList[index],
                                                    style: Styles.circularStd(
                                                      context,
                                                      fontSize: 12,
                                                    ))
                                              ]));
                                    })),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // SliverPersistentHeader(
                //   pinned: true,
                //   floating: true,
                //   delegate: CustomAppBarDelegate(),
                // ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  27.y,
                                  VendorsAndPhotographerColumn(
                                    cardTextList: cardTextList,
                                    cardImageList: cardImageList,
                                    cardSubText: cardSubText,
                                    heading: AppStrings.popularVendor,
                                    subHeading: AppStrings.viewPopularVendor,
                                  ),
                                  35.y,
                                  VendorsAndPhotographerColumn(
                                      cardTextList: cardTextList,
                                      cardImageList: anotherCardImageList,
                                      cardSubText: cardSubText,
                                      heading: AppStrings.photograperInCity,
                                      subHeading:
                                          AppStrings.viewPopularPhotographer),
                                  70.y,
                                  const RatingWidgets(),
                                  30.y,
                                  Button(
                                    border:
                                        Border.all(color: AppColors.greyColor),
                                    color: Colors.transparent,
                                    text: AppStrings.becomeVendor,
                                    textcolor: AppColors.greyColor,
                                    ontap: () {
                                      Navigate.push(
                                        context,
                                        const BookingScreen(),
                                      );
                                    },
                                  )
                                ]))),
                  ]),
                ),
              ])),
    );
  }
}

class CustomAppBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: const CustomAppBar(),
    );
  }

  @override
  double get maxExtent => 0.15.sh;

  @override
  double get minExtent => 0.15.sh;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
