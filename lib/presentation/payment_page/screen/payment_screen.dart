import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';
import 'package:flutter_payment_app/component/utils/size_utils.dart';
import 'package:flutter_payment_app/presentation/app_widgets/custom_buttons.dart';
import 'package:flutter_payment_app/presentation/app_widgets/custom_large_button.dart';
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
            Text(
              "Success !",
              style: TextStyle(
                fontSize: 30.fSize,
                fontWeight: FontWeight.bold,
                color: AppColor.mainColor,
              ),
            ),
            Text(
              "Payment is completed for 2 bills",
              style: TextStyle(
                fontSize: 20.fSize,
                fontWeight: FontWeight.w600,
                color: AppColor.idColor,
              ),
            ),
            SizedBox(height: 30.v),
            Container(
              height: 160.adaptSize,
              width: 350.adaptSize,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.v),
                  border: Border.all(
                    width: 2.h,
                    color: Colors.grey.withOpacity(0.5),
                  )),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50.adaptSize,
                                  height: 50.adaptSize,
                                  margin: EdgeInsets.only(
                                      top: 15.v, left: 20.h, bottom: 10.v),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.v),
                                    color: Colors.green,
                                  ),
                                  child: Icon(
                                    Icons.done,
                                    size: 30.adaptSize,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 10.h),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "KenGen Power",
                                      style: TextStyle(
                                        fontSize: 16.fSize,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.mainColor,
                                      ),
                                    ),
                                    SizedBox(height: 10.v),
                                    Text(
                                      "Id: 47579379",
                                      style: TextStyle(
                                        fontSize: 16.fSize,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.mainColor,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 20.h),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 35.v,
                                    ),
                                    Text(
                                      "\$1248.00",
                                      style: TextStyle(
                                        fontSize: 16.fSize,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.mainColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 2.adaptSize,
                              color: Colors.grey.withOpacity(0.5),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(height: 40.v),
            Column(
              children: [
                Text(
                  "Total amount",
                  style: TextStyle(
                    fontSize: 20.fSize,
                    color: AppColor.idColor,
                  ),
                ),
                Text(
                  "\$2840.00",
                  style: TextStyle(
                    fontSize: 20.fSize,
                    color: AppColor.mainColor,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(height: 100.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomButtons(
                  icon: Icons.share_sharp,
                  onTap: () {},
                  text: "share",
                ),
                SizedBox(width: 30.h),
                CustomButtons(
                  icon: Icons.print_outlined,
                  onTap: () {},
                  text: "print",
                )
              ],
            ),
            SizedBox(height: 20.v),
            CustomLargeButton(
              text: "Done",
              backgroundColor: Colors.white,
              textColor: AppColor.mainColor,
            ),
          ],
        ),
      ),
    );
  }
}
