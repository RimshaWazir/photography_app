import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_2/Data/Datasource/Resources/color.dart';
import 'package:task_2/Data/Datasource/Resources/styles.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? labelText;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final bool isValid;

  final String? titleText;
  final int? maxline;
  final String? validateText;
  final bool? isShadowRequired;
  final Color? titleTextColor;
  final double? suffixWidth;
  final double? suffixHeight;
  final ValueChanged? onChanged;
  final GestureTapCallback? onTap;
  final bool? readOnly;
  final FocusNode? focusNode;
  final Color? hintTextColor;
  final double? height;

  final EdgeInsets? contentPadding;

  const CustomTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.obscureText = false,
      required this.textInputType,
      this.suffixIcon,
      this.validator,
      this.prefixIcon,
      this.isValid = false,
      this.titleText = "",
      this.maxline = 1,
      this.validateText,
      this.isShadowRequired = false,
      this.titleTextColor = AppColors.blackColor,
      this.suffixWidth = 15,
      this.suffixHeight = 15,
      this.onChanged,
      this.contentPadding,
      this.onTap,
      this.readOnly,
      this.focusNode,
      this.hintTextColor,
      this.borderRadius,
      this.height,
      this.labelText})
      : super(key: key);

  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    double textScaleFactor = const MediaQueryData().textScaleFactor;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8).r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleText!.isNotEmpty
              ? Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 3).r,
                        child: Text(titleText!)),
                    SizedBox(
                      height: 8.sp,
                    )
                  ],
                )
              : Container(),
          SizedBox(
            height: height ?? 56.sp,
            child: TextFormField(
              onTap: onTap,
              readOnly: readOnly ?? false,
              focusNode: focusNode,
              validator: isValid
                  ? (v) {
                      if (v!.trim().isEmpty) {
                        return validateText;
                      }
                      return null;
                    }
                  : validator,
              onChanged: onChanged,
              keyboardType: textInputType,
              obscureText: obscureText,
              controller: controller,
              maxLines: maxline,
              style: Styles.circularStd(context,
                  color: AppColors.blackColor, fontWeight: FontWeight.w300),
              cursorColor: AppColors.blue,
              decoration: InputDecoration(
                  prefixIcon: prefixIcon,
                  filled: false,
                  hintText: hintText,
                  labelText: labelText,
                  labelStyle: Styles.circularStd(context,
                      color: AppColors.greyColor, fontSize: 14.sp),
                  suffixIcon: suffixIcon != null
                      ? SizedBox(
                          width: suffixWidth ?? 20.sp,
                          height: suffixHeight ?? 20.sp,
                          child: Center(
                            child: suffixIcon,
                          ),
                        )
                      : null,
                  hintStyle: Styles.circularStd(context,
                      color: FocusScope.of(context).hasFocus
                          ? AppColors.blackColor.withOpacity(0.7)
                          : AppColors.greyColor,
                      fontSize: textScaleFactor > 1.0 ? 12.sp : 13.sp,
                      fontWeight: FontWeight.w400),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      borderRadius ?? 12.r,
                    ),
                    borderSide: const BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(
                      color: AppColors.greyColor,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(
                      color: AppColors.blue,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
