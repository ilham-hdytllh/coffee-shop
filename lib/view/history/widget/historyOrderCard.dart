import 'package:coffeshop/constant/colors.dart';
import 'package:coffeshop/constant/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryOrderCard extends StatelessWidget {
  const HistoryOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.r),
        color: const Color(0XFF262B33),
      ),
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/coffe1.png",
                  height: 65,
                  width: 65,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Cappuccino",
                        style: CustomTextStyle.text3.copyWith(
                            color: CustomColor.white,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "With Steamed Milk",
                        style: CustomTextStyle.text6.copyWith(
                            color: CustomColor.lightGrey,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '\$ ',
                        style: CustomTextStyle.text2.copyWith(
                            color: CustomColor.brown,
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: 10.50.toString(),
                        style: CustomTextStyle.text2.copyWith(
                            color: CustomColor.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: CustomColor.black,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        "S",
                        style: CustomTextStyle.text3.copyWith(
                            color: CustomColor.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      const VerticalDivider(
                        width: 0.5,
                        color: Color(0XFF21262E),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: '\$ ',
                              style: CustomTextStyle.text3.copyWith(
                                  color: CustomColor.brown,
                                  fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: 4.20.toString(),
                              style: CustomTextStyle.text3.copyWith(
                                  color: CustomColor.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'X ',
                        style: CustomTextStyle.text3.copyWith(
                            color: CustomColor.brown,
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: 2.toString(),
                        style: CustomTextStyle.text3.copyWith(
                            color: CustomColor.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Text(
                  8.40.toString(),
                  style: CustomTextStyle.text3.copyWith(
                      color: CustomColor.brown, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: CustomColor.black,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        "S",
                        style: CustomTextStyle.text3.copyWith(
                            color: CustomColor.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      const VerticalDivider(
                        width: 0.5,
                        color: Color(0XFF21262E),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: '\$ ',
                              style: CustomTextStyle.text3.copyWith(
                                  color: CustomColor.brown,
                                  fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: 4.20.toString(),
                              style: CustomTextStyle.text3.copyWith(
                                  color: CustomColor.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'X ',
                        style: CustomTextStyle.text3.copyWith(
                            color: CustomColor.brown,
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: 2.toString(),
                        style: CustomTextStyle.text3.copyWith(
                            color: CustomColor.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Text(
                  8.40.toString(),
                  style: CustomTextStyle.text3.copyWith(
                      color: CustomColor.brown, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: CustomColor.black,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        "S",
                        style: CustomTextStyle.text3.copyWith(
                            color: CustomColor.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      const VerticalDivider(
                        width: 0.5,
                        color: Color(0XFF21262E),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: '\$ ',
                              style: CustomTextStyle.text3.copyWith(
                                  color: CustomColor.brown,
                                  fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: 4.20.toString(),
                              style: CustomTextStyle.text3.copyWith(
                                  color: CustomColor.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'X ',
                        style: CustomTextStyle.text3.copyWith(
                            color: CustomColor.brown,
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: 2.toString(),
                        style: CustomTextStyle.text3.copyWith(
                            color: CustomColor.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Text(
                  8.40.toString(),
                  style: CustomTextStyle.text3.copyWith(
                      color: CustomColor.brown, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
