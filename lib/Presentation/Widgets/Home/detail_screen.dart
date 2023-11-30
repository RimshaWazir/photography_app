import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_2/Application/Services/Navigation/navigation.dart';
import 'package:task_2/Data/Datasource/Extensions/extensions.dart';
import 'package:task_2/Data/Datasource/Resources/asset.dart';
import 'package:task_2/Data/Datasource/Resources/color.dart';
import 'package:task_2/Data/Datasource/Resources/strings.dart';
import 'package:task_2/Data/Datasource/Resources/styles.dart';
import 'package:task_2/Presentation/Widgets/Auth/Componenet/button.dart';
import 'package:task_2/Presentation/Widgets/Home/Booking/booking_screen.dart';

class DetailScreen extends StatefulWidget {
  final String? selectedImage;
  double ratingValue = 4.9;
  DetailScreen({this.selectedImage, super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool showMore = false;

  final controller = PageController(viewportFraction: 0.9, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final List<String> gridviewText = [
      AppStrings.userName,
      AppStrings.portfolio,
      AppStrings.userName,
      AppStrings.portfolio,
    ];
    final List<String> cardImageList = [
      Assets.image1,
      Assets.image2,
      Assets.image3,
      Assets.image4,
    ];
    // final pages = List.generate(32, (index) => const SizedBox());
    //
    // Timer.periodic(const Duration(seconds: 6), (Timer timer) {
    //   controller.nextPage(
    //     duration: const Duration(seconds: 5),
    //     curve: Curves.easeInOut,
    //   );
    // });
    return Scaffold(
      body: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: true,
              expandedHeight: 0.24.sh,
              elevation: 0,
              snap: true,
              floating: true,
              pinned: true,
              backgroundColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  widget.selectedImage!,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ];
        },
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.enchant,
                        style: Styles.circularStd(
                          context,
                          fontSize: 20,
                        ),
                      ),
                      6.y,
                      Text(
                        AppStrings.islamabad,
                        style: Styles.circularStd(
                          context,
                          fontSize: 14,
                        ),
                      ),
                      6.y,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          8.x,
                          Text(
                            AppStrings.review,
                            style: Styles.circularStd(
                              context,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      20.y,
                      Text(
                        AppStrings.aboutUs,
                        style: Styles.circularStd(
                          context,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        AppStrings.discription,
                        maxLines: showMore ? null : 7,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.circularStd(
                          context,
                          fontSize: 14,
                          color: AppColors.blackColor.withOpacity(0.8),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            showMore = !showMore;
                          });
                        },
                        child: Text(
                          showMore ? AppStrings.less : AppStrings.more,
                          style: Styles.circularStd(
                            context,
                            fontSize: 14,
                            color: AppColors.blue,
                          ),
                        ),
                      ),
                      30.y,
                      Text(
                        AppStrings.album,
                        style: Styles.circularStd(
                          context,
                          fontSize: 18,
                        ),
                      ),
                      30.y,
                      GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8.0,
                          mainAxisSpacing: 8.0,
                        ),
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 0.20.sh,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              cardImageList[index]))),
                                ),
                              ),
                              Text(
                                gridviewText[index],
                                style: Styles.circularStd(
                                  context,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                AppStrings.islamabad,
                                style: Styles.circularStd(context,
                                    fontSize: 12,
                                    color:
                                        AppColors.blackColor.withOpacity(0.8)),
                              ),
                            ],
                          );
                        },
                      ),
                      18.y,
                      Button(
                        border: Border.all(color: AppColors.greyColor),
                        color: Colors.transparent,
                        text: AppStrings.veiewAll,
                        textcolor: AppColors.greyColor,
                        ontap: () {},
                      ),
                      18.y,
                      Text(
                        AppStrings.reviews,
                        style: Styles.circularStd(context,
                            fontSize: 18,
                            color: AppColors.blackColor.withOpacity(0.8)),
                      ),
                      17.y,
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              widget.ratingValue.toString(),
                              style: Styles.circularStd(context,
                                  fontSize: 30,
                                  color: AppColors.blackColor.withOpacity(0.8)),
                            ),
                            10.y,
                            RatingBar.builder(
                              initialRating: widget.ratingValue,
                              minRating: 1,
                              itemSize: 30,
                              glow: false,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 1.0),
                              itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 12),
                              onRatingUpdate: (rating) {
                                setState(() {
                                  widget.ratingValue = rating;
                                });
                              },
                            ),
                            4.y,
                            Text(
                              "Based on 51 reviews",
                              style: Styles.circularStd(context,
                                  fontSize: 14,
                                  color: AppColors.blackColor.withOpacity(0.8)),
                            ),
                          ],
                        ),
                      ),
                      20.y,
                      RatingRow(
                        value: 5.0,
                        text: "(543 reviews)",
                      ),
                      RatingRow(
                        value: 4.0,
                        text: "(231 reviews)",
                      ),
                      RatingRow(
                        value: 3.0,
                        text: "(167 reviews)",
                      ),
                      RatingRow(
                        value: 2.0,
                        text: "(82 reviews)",
                      ),
                      RatingRow(
                        value: 1.0,
                        text: "(14 reviews)",
                      ),
                      29.y,
                      SizedBox(
                        width: 2.sw,
                        height: 0.4.sh,
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          itemCount: 2,
                          separatorBuilder: (BuildContext context, int index) =>
                              const Divider(),
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                SizedBox(
                                  width: 2.sw,
                                  height: 0.1.sh,
                                  child: ListTile(
                                    trailing: Text(
                                      "2 days ago",
                                      style: Styles.circularStd(context,
                                          fontSize: 14,
                                          color: AppColors.blackColor
                                              .withOpacity(0.8)),
                                    ),
                                    minVerticalPadding: 10,
                                    leading: CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      maxRadius: 27.r,
                                      backgroundImage: AssetImage(
                                        cardImageList[index],
                                      ),
                                    ),
                                    title: Text(
                                      "Sarah Johnson",
                                      style: Styles.circularStd(context,
                                          fontSize: 14,
                                          color: AppColors.blackColor
                                              .withOpacity(0.8)),
                                    ),
                                    subtitle: Row(
                                      children: [
                                        RatingBar.builder(
                                          glow: false,
                                          initialRating: widget.ratingValue,
                                          minRating: 1,
                                          itemSize: 20,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 1.0),
                                          itemBuilder: (context, _) =>
                                              const Icon(Icons.star,
                                                  color: Colors.amber, size: 5),
                                          onRatingUpdate: (rating) {
                                            setState(() {
                                              widget.ratingValue = rating;
                                            });
                                            print(rating);
                                          },
                                        ),
                                        Text(
                                          widget.ratingValue.toString(),
                                          style: Styles.circularStd(context,
                                              fontSize: 14,
                                              color: AppColors.blackColor
                                                  .withOpacity(0.8)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  "CaptureSphere Studios' booking service is a game-changer! Easy, efficient, and the resulting photos were simply stunning. Highly recommend for a seamless experience.",
                                  style: Styles.circularStd(context,
                                      fontSize: 14,
                                      color: AppColors.blackColor
                                          .withOpacity(0.8)),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      40.y,
                      Button(
                        color: AppColors.blue,
                        text: 'Book Now',
                        textcolor: AppColors.whiteColor,
                        ontap: () {
                          Navigate.push(context, const BookingScreen());
                        },
                      ),
                      40.y,
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RatingRow extends StatelessWidget {
  double? value;
  String? text;
  RatingRow({
    this.value,
    this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar.builder(
          initialRating: 5.0,
          minRating: 1,
          itemSize: 25,
          glow: false,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        const Spacer(),
        Text(
          text!,
          style: Styles.circularStd(context,
              fontSize: 12, color: AppColors.blackColor.withOpacity(0.8)),
        ),
      ],
    );
  }
}
