import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';
import 'package:flutter_payment_app/component/utils/size_utils.dart';

class CustomLargeButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final Function()? onTap;
  final bool? isBorder;
  final String text;
  const CustomLargeButton({
    super.key,
    this.backgroundColor = AppColor.mainColor,
    this.textColor = Colors.white,
    this.onTap,
    this.isBorder = false,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.adaptSize,
        width: MediaQuery.of(context).size.width - 60.adaptSize,
        margin: EdgeInsets.only(left: 30.h, right: 30.h),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10.v),
            border: Border.all(
              width: 2.h,
              color: AppColor.mainColor,
            )),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.fSize,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
