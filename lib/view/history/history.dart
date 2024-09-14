import 'package:coffeshop/constant/colors.dart';
import 'package:coffeshop/constant/textStyle.dart';
import 'package:coffeshop/shared_widget/appbarContainer.dart';
import 'package:coffeshop/view/history/widget/historyOrderCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.black,
      appBar: AppBar(
        backgroundColor: CustomColor.black,
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppbarContainer(
              onTap: () {},
              icon: Center(
                child: SvgPicture.asset(
                  "assets/icons/drawer_icon.svg",
                  color: CustomColor.lightGrey,
                  alignment: Alignment.center,
                  width: 16,
                  height: 16,
                ),
              ),
            ),
            Text(
              "Order History",
              style: CustomTextStyle.text2.copyWith(
                  fontWeight: FontWeight.w600, color: CustomColor.white),
            ),
            SizedBox(
              height: 40,
              width: 40,
              child: Image.asset(
                "assets/images/profile.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Order Date",
                        style: CustomTextStyle.text4.copyWith(
                            fontWeight: FontWeight.w600,
                            color: CustomColor.white),
                      ),
                      Text(
                        "20th March 16:23",
                        style: CustomTextStyle.text4.copyWith(
                            fontWeight: FontWeight.w300,
                            color: CustomColor.lightGrey),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Total Amount",
                        style: CustomTextStyle.text4.copyWith(
                            fontWeight: FontWeight.w600,
                            color: CustomColor.white),
                      ),
                      Text(
                        "\$ 74.40",
                        style: CustomTextStyle.text4.copyWith(
                            fontWeight: FontWeight.w300,
                            color: CustomColor.brown),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const HistoryOrderCard(),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Order Date",
                        style: CustomTextStyle.text4.copyWith(
                            fontWeight: FontWeight.w600,
                            color: CustomColor.white),
                      ),
                      Text(
                        "19th March 16:23",
                        style: CustomTextStyle.text4.copyWith(
                            fontWeight: FontWeight.w300,
                            color: CustomColor.lightGrey),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Total Amount",
                        style: CustomTextStyle.text4.copyWith(
                            fontWeight: FontWeight.w600,
                            color: CustomColor.white),
                      ),
                      Text(
                        "\$ 74.40",
                        style: CustomTextStyle.text4.copyWith(
                            fontWeight: FontWeight.w300,
                            color: CustomColor.brown),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const HistoryOrderCard(),
            ],
          ),
        ),
      ),
    );
  }
}
