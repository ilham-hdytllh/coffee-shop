import 'package:coffeshop/constant/colors.dart';
import 'package:coffeshop/constant/textStyle.dart';
import 'package:coffeshop/view/dashboard/widget/detailProduct.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CardProduct extends StatelessWidget {
  final String productName;
  final String productDesc;
  final double productPrice;
  final String productImage;
  const CardProduct(
      {super.key,
      required this.productName,
      required this.productDesc,
      required this.productPrice,
      required this.productImage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const DetailProduct(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 10.w),
        width: 149.w,
        height: 232.h,
        padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23.r),
          gradient: LinearGradient(
            colors: [
              CustomColor.darkGrey,
              const Color(0XFF262B33),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 124.h,
              child: Image.asset(
                productImage,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              productName,
              style: CustomTextStyle.text4.copyWith(
                fontWeight: FontWeight.w400,
                color: CustomColor.white,
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            Text(
              productDesc,
              style: CustomTextStyle.text6.copyWith(
                  fontWeight: FontWeight.w400,
                  color: CustomColor.white,
                  letterSpacing: 0.4),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                        text: productPrice.toString(),
                        style: CustomTextStyle.text3.copyWith(
                            color: CustomColor.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
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
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
