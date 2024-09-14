import 'package:coffeshop/constant/colors.dart';
import 'package:coffeshop/constant/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CartItemSingleCat extends StatelessWidget {
  const CartItemSingleCat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      width: double.infinity,
      height: 132.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.r),
        gradient: const LinearGradient(
          colors: [
            Color(0XFF262B33),
            Color(0XFF262B33),
          ],
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/coffe1.png",
            height: double.infinity,
            fit: BoxFit.fitHeight,
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
                      color: CustomColor.white, fontWeight: FontWeight.w400),
                ),
                Text(
                  "With Steamed Milk",
                  style: CustomTextStyle.text6.copyWith(
                      color: CustomColor.lightGrey,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: const Color(0XFF141921),
                      ),
                      child: Center(
                        child: Text(
                          "250gm",
                          style: CustomTextStyle.text6.copyWith(
                              color: CustomColor.lightGrey,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const Spacer(),
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
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 29,
                      height: 29,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.r),
                        color: CustomColor.brown,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/minus_icon.svg",
                          color: CustomColor.white,
                          width: 5,
                          height: 5,
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 29,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.r),
                          border:
                              Border.all(width: 1, color: CustomColor.brown)),
                      child: Center(
                        child: Text(
                          "1",
                          style: CustomTextStyle.text3.copyWith(
                              color: CustomColor.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Container(
                      width: 29,
                      height: 29,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.r),
                        color: CustomColor.brown,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/plus_icon.svg",
                          color: CustomColor.white,
                          width: 12,
                          height: 12,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
    );
  }
}
