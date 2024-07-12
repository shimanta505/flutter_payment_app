import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/utils/size_utils.dart';

import '../../component/colors.dart';

class CustomSizedText extends StatelessWidget {
  final String text;
  final Color color;
  const CustomSizedText({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    final Size textSize = _textSize(text);
    return Container(
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 16.fSize,
              color: color,
              fontWeight: FontWeight.w700,
            ),
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.clip,
          ),
          SizedBox(height: 5.v),
          Row(
            children: [
              for (int i = 0; i < textSize.width / 5; i++)
                i.isEven
                    ? Container(
                        width: 5.h,
                        color: color,
                        height: 2.v,
                      )
                    : Container(
                        width: 5.h,
                        color: Colors.white,
                        height: 2.v,
                      )
            ],
          ),
        ],
      ),
    );
  }

  Size _textSize(String text) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
          text: text,
          style: TextStyle(
            fontSize: 16.fSize,
            color: color,
            fontWeight: FontWeight.w700,
          )),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.maxFinite);
    return textPainter.size;
  }
}
