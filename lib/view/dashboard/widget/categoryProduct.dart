import 'package:coffeshop/constant/colors.dart';
import 'package:coffeshop/constant/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryProduct extends StatelessWidget {
  final String categoryName;
  final bool selected;
  final Function(String) onTap;
  const CategoryProduct(
      {super.key,
      required this.categoryName,
      required this.selected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(categoryName);
      },
      child: Padding(
        padding: EdgeInsets.only(right: 15.w),
        child: Column(
          children: [
            Text(
              categoryName,
              style: CustomTextStyle.text4.copyWith(
                  color:
                      selected == true ? CustomColor.brown : CustomColor.grey,
                  fontWeight: FontWeight.w600),
            ),
            selected == true
                ? SizedBox(
                    height: 4.h,
                  )
                : const SizedBox(),
            selected == true
                ? Icon(
                    Icons.circle,
                    size: 10.sp,
                    color: CustomColor.brown,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
