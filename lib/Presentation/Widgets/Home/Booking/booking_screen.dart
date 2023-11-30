import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_2/Application/Services/Navigation/navigation.dart';
import 'package:task_2/Data/Datasource/Extensions/extensions.dart';
import 'package:task_2/Data/Datasource/Resources/asset.dart';
import 'package:task_2/Data/Datasource/Resources/color.dart';
import 'package:task_2/Data/Datasource/Resources/strings.dart';
import 'package:task_2/Data/Datasource/Resources/styles.dart';
import 'package:task_2/Presentation/Common/custom_text_field.dart';
import 'package:task_2/Presentation/Widgets/Auth/Componenet/button.dart';
import 'package:task_2/Presentation/Widgets/Home/Booking/service/service.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final TextEditingController name = TextEditingController();

  final TextEditingController email = TextEditingController();

  final TextEditingController number = TextEditingController();

  final TextEditingController service = TextEditingController();

  final TextEditingController date = TextEditingController();

  final TextEditingController address = TextEditingController();

  final TextEditingController discription = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File file = File(result.files.single.path!);
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    String? selectedOption;

    final List<String> options = ['Fashion', 'Dress', 'Shoes', 'Jewellery'];
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.sp),
              width: MediaQuery.sizeOf(context).width,
              child: Row(
                children: [
                  Text(AppStrings.booking,
                      style: Styles.circularStd(
                        context,
                        fontSize: 20,
                      )),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigate.pop(
                          context,
                        );
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 24.sp,
                      ))
                ],
              ),
            ),
          ]),
      body: SafeArea(
        child: Form(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  30.y,
                  CustomTextField(
                      prefixIcon: const Icon(Icons.person),
                      controller: name,
                      hintText: AppStrings.fullName,
                      textInputType: TextInputType.name),
                  10.y,
                  CustomTextField(
                      prefixIcon: const Icon(Icons.email),
                      controller: email,
                      hintText: AppStrings.email,
                      textInputType: TextInputType.emailAddress),
                  10.y,
                  CustomTextField(
                      prefixIcon: const Icon(Icons.flag),
                      controller: number,
                      hintText: AppStrings.number,
                      textInputType: TextInputType.number),
                  10.y,
                  SizedBox(
                    height: 56.sp,
                    child: DropdownButtonFormField<String>(
                      value: selectedOption,
                      items: options.map((String option) {
                        return DropdownMenuItem<String>(
                          value: option,
                          child: Text(option),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          selectedOption = value;
                        });
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.dashboard_outlined),
                        hintText: "Select services",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select an option';
                        }
                        return null;
                      },
                    ),
                  ),
                  10.y,
                  CustomTextField(
                      controller: date,
                      suffixIcon: const Icon(Icons.calendar_month),
                      hintText: AppStrings.date,
                      textInputType: TextInputType.datetime),
                  10.y,
                  CustomTextField(
                      height: 0.1.sh,
                      maxline: 5,
                      controller: address,
                      hintText: AppStrings.address,
                      textInputType: TextInputType.text),
                  10.y,
                  CustomTextField(
                      height: 0.2.sh,
                      maxline: 40,
                      controller: discription,
                      hintText: AppStrings.message,
                      textInputType: TextInputType.text),
                  10.y,
                  GestureDetector(
                    onTap: pickFile,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.greyColor),
                          color: AppColors.darkBrownColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10)),
                      width: 0.9.sw,
                      height: 0.15.sh,
                      child: Center(
                          child: Column(
                        children: [
                          40.y,
                          Image.asset(
                            Assets.icon,
                            fit: BoxFit.contain,
                          ),
                          const Text(AppStrings.upload,
                              style: TextStyle(color: AppColors.blackColor)),
                        ],
                      )),
                    ),
                  ),
                  10.y,
                  Button(
                      ontap: () {
                        Navigate.push(
                          context,
                          const ServiceScreen(),
                        );
                      },
                      color: AppColors.blue,
                      text: AppStrings.book,
                      textcolor: AppColors.whiteColor)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
