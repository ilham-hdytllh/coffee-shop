import 'package:coffeshop/constant/colors.dart';
import 'package:coffeshop/constant/textStyle.dart';
import 'package:coffeshop/shared_widget/appbarContainer.dart';
import 'package:coffeshop/view/cart/widget/cartItemManyCat.dart';
import 'package:coffeshop/view/cart/widget/cartItemSingleCat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

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
              "Cart",
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
            children: const [
              CartItemSingleCat(),
              CartItemManyCat(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: CustomColor.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.r),
          ),
        ),
        height: 80,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Price",
                      style: CustomTextStyle.text5.copyWith(
                        color: CustomColor.lightGrey,
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
                height: 50.h,
                width: 240.w,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      CustomColor.brown,
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Cekout",
                    style: CustomTextStyle.text3.copyWith(
                      color: CustomColor.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
