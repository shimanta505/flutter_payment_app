import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/utils/size_utils.dart';
import 'package:get/get.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 80.v, left: 20.h, right: 20.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/paymentbackground.png"),
            fit: BoxFit.contain,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 130.adaptSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage("images/success.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
