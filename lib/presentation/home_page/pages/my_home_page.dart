import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_payment_app/component/colors.dart';
import 'package:flutter_payment_app/component/utils/size_utils.dart';
import 'package:flutter_payment_app/controllers/data_controller.dart';
import 'package:flutter_payment_app/presentation/app_widgets/custom_buttons.dart';
import 'package:flutter_payment_app/presentation/app_widgets/custom_large_button.dart';
import 'package:flutter_payment_app/presentation/app_widgets/custom_sized_text.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final DataController _homeController = Get.put(DataController());
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(_homeController.list.toString());
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: GetBuilder<DataController>(
          builder: (GetxController controller) {
            return Container(
              height: Get.height,
              width: Get.width,
              child: Stack(
                children: [
                  _headSection(),
                  _listBills(),
                  _payButton(),
                  _headerText_2(),
                  _headerText(),
                ],
              ),
            );
          },
        ));
  }

  Positioned _headSection() => Positioned(
        top: -30.v,
        child: Container(
          height: 330.adaptSize,
          width: Get.width,
          child: Stack(
            children: [
              _mainBackground(),
              _curveImageContainer(),
              _buttonContainer(),
            ],
          ),
        ),
      );

  Positioned _mainBackground() => Positioned(
          child: Container(
        height: 310.adaptSize,
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.contain,
          ),
        ),
      ));

  Positioned _curveImageContainer() => Positioned(
      left: 0,
      right: 0,
      bottom: 30.v,
      child: Container(
        height: 100.adaptSize,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/curve.png"),
          ),
        ),
      ));

  Positioned _buttonContainer() => Positioned(
      bottom: 35.v,
      right: 70.h,
      //  left: 0,
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            barrierColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            isScrollControlled: true,
            builder: (context) {
              return Container(
                height: 700.adaptSize,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height:
                            MediaQuery.of(context).size.height - 300.adaptSize,
                        color: Colors.transparent,
                      ),
                    ),
                    Positioned(
                        right: 70.h,
                        child: Container(
                          width: 60.adaptSize,
                          height: 250.adaptSize,
                          decoration: BoxDecoration(
                            color: AppColor.mainColor,
                            borderRadius: BorderRadius.circular(30.v),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomButtons(
                                icon: Icons.cancel,
                                iconColor: AppColor.mainColor,
                                textColor: Colors.white,
                                backgroundColor: Colors.white,
                                onTap: () => Navigator.of(context).pop(),
                                text: "Cancel",
                              ),
                              CustomButtons(
                                icon: Icons.add,
                                iconColor: AppColor.mainColor,
                                textColor: Colors.white,
                                backgroundColor: Colors.white,
                                onTap: () => Navigator.of(context).pop(),
                                text: "Add Bill",
                              ),
                              CustomButtons(
                                icon: Icons.history,
                                iconColor: AppColor.mainColor,
                                textColor: Colors.white,
                                backgroundColor: Colors.white,
                                onTap: () => Navigator.of(context).pop(),
                                text: "History",
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              );
            },
          );
        },
        child: Container(
          height: 60.adaptSize,
          width: 60.adaptSize,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/lines.png")),
            boxShadow: [
              BoxShadow(
                blurRadius: 15,
                offset: Offset(0, 1),
                color: Color(0xFF11424d).withOpacity(0.2),
              ),
            ],
          ),
        ),
      ));

  Positioned _listBills() => Positioned(
      top: 260.v,
      bottom: 0,
      left: 0,
      right: 0,
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView.builder(
          itemCount: _homeController.list.length,
          itemBuilder: (context, index) => Container(
            height: 150.adaptSize,
            margin: EdgeInsets.only(top: 10.v, left: 10.h, right: 15.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.v),
                bottomRight: Radius.circular(30.v),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFd8dbe0),
                  offset: Offset(1, 1),
                  blurRadius: 20.0,
                  spreadRadius: 10,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60.adaptSize,
                          width: 60.adaptSize,
                          decoration: BoxDecoration(
                            border: Border.all(width: 3.h, color: Colors.grey),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("images/brand1.png"),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _homeController.list[index]["brand"],
                              style: TextStyle(
                                fontSize: 16.fSize,
                                color: AppColor.mainColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Id:846594",
                              style: TextStyle(
                                fontSize: 16.fSize,
                                color: AppColor.mainColor,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    CustomSizedText(
                        text: _homeController.list[index]["more"],
                        color: AppColor.green),
                    SizedBox(height: 5.v),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 80.adaptSize,
                          height: 30.adaptSize,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.v),
                            color: AppColor.selectBackground,
                          ),
                          child: Center(
                            child: Text(
                              "Select",
                              style: TextStyle(
                                fontSize: 16.fSize,
                                color: AppColor.selectColor,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Text(
                          _homeController.list[index]["due"],
                          style: TextStyle(
                            fontSize: 18.fSize,
                            fontWeight: FontWeight.w900,
                            color: AppColor.mainColor,
                          ),
                        ),
                        Text(
                          "Due in 3 days",
                          style: TextStyle(
                            fontSize: 14.fSize,
                            fontWeight: FontWeight.w700,
                            color: AppColor.mainColor,
                          ),
                        ),
                        SizedBox(height: 15.v),
                      ],
                    ),
                    SizedBox(width: 5.h),
                    Container(
                      width: 5.adaptSize,
                      height: 35.adaptSize,
                      decoration: BoxDecoration(
                          color: AppColor.halfOval,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.v),
                            bottomLeft: Radius.circular(30.v),
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ));

  Positioned _payButton() => Positioned(
      bottom: 60.v,
      left: 0,
      right: 0,
      child: CustomLargeButton(
        text: "Pay all bills",
      ));

  Positioned _headerText() => Positioned(
      left: 40.h,
      top: 50.v,
      child: Text(
        "My Bills",
        style: TextStyle(
          fontSize: 50.fSize,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ));
  Positioned _headerText_2() => Positioned(
      left: 30.h,
      top: 100.v,
      child: Text(
        "My Bills",
        style: TextStyle(
          fontSize: 50.fSize,
          fontWeight: FontWeight.bold,
          color: Color(0xFF293952),
        ),
      ));
}
