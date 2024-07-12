import 'package:flutter/cupertino.dart';
import 'package:flutter_payment_app/component/utils/size_utils.dart';

class CustomButtons extends StatelessWidget {
  final double? fontSize;
  final IconData icon;
  final Function()? onTap;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? textColor;
  final String? text;
  CustomButtons(
      {super.key,
      this.fontSize,
      required this.icon,
      this.onTap,
      this.backgroundColor,
      this.iconColor,
      this.textColor,
      this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 40.adaptSize,
            height: 40.adaptSize,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(20.v),
            ),
            child: Icon(
              icon,
              size: 30.adaptSize,
              color: iconColor,
            ),
          ),
          text != null
              ? Text(
                  text!,
                  style: TextStyle(
                    fontSize: 14.fSize,
                    color: textColor,
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
