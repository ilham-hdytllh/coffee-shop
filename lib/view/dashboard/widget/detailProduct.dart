import 'package:coffeshop/constant/colors.dart';
import 'package:coffeshop/constant/textStyle.dart';
import 'package:coffeshop/shared_widget/appbarContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({super.key});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppbarContainer(
              onTap: () {
                Navigator.of(context).pop();
              },
              icon: Center(
                child: SvgPicture.asset(
                  "assets/icons/arrow_back_icon.svg",
                  color: CustomColor.lightGrey,
                  alignment: Alignment.center,
                  width: 16,
                  height: 16,
                ),
              ),
            ),
            AppbarContainer(
              onTap: () {},
              icon: Center(
                child: SvgPicture.asset(
                  "assets/icons/heart_icon.svg",
                  color: CustomColor.red,
                  alignment: Alignment.center,
                  width: 16,
                  height: 16,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: MediaQuery.of(context).size.height * 0.4,
              child: Image.asset(
                "assets/images/detail_coffe1.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.40,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0XFF000000).withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.r),
                    topRight: Radius.circular(25.r),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Cappuccino",
                                          style: CustomTextStyle.text2.copyWith(
                                              color: CustomColor.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "With Steamed Milk",
                                          style: CustomTextStyle.text5.copyWith(
                                              color: CustomColor.lightGrey,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 130,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 55,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                            color: const Color(0XFF141921),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                "assets/icons/single_coffe_bean_icon.svg",
                                                color: CustomColor.brown,
                                                height: 22,
                                                width: 22,
                                              ),
                                              SizedBox(
                                                height: 3.h,
                                              ),
                                              Text(
                                                "Bean",
                                                style: CustomTextStyle.text6
                                                    .copyWith(
                                                        color: CustomColor
                                                            .lightGrey,
                                                        fontWeight:
                                                            FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Container(
                                          width: 55,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                            color: const Color(0XFF141921),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                "assets/icons/map_icon.svg",
                                                color: CustomColor.brown,
                                                height: 22,
                                                width: 22,
                                              ),
                                              SizedBox(
                                                height: 3.h,
                                              ),
                                              Text(
                                                "Africa",
                                                style: CustomTextStyle.text6
                                                    .copyWith(
                                                        color: CustomColor
                                                            .lightGrey,
                                                        fontWeight:
                                                            FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.w,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/icons/star_icon.svg",
                                          width: 22,
                                          height: 22,
                                          color: CustomColor.brown,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          "4.5",
                                          style: CustomTextStyle.text3.copyWith(
                                              color: CustomColor.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          "(6.879)",
                                          style: CustomTextStyle.text6.copyWith(
                                              color: CustomColor.lightGrey,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 120,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      color: const Color(0XFF141921),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Medium Roasted",
                                        style: CustomTextStyle.text6.copyWith(
                                            color: CustomColor.lightGrey,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Text(
                                "Description",
                                style: CustomTextStyle.text4.copyWith(
                                    color: CustomColor.lightGrey,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Arabica beans are by far the most popular type of coffee beans, making up about 60% of the world’s coffee. These tasty beans originated many centuries ago in the highlands of Ethiopia, and may even be the first coffee beans ever consumed! ",
                                style: CustomTextStyle.text5.copyWith(
                                    color: CustomColor.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                "Size",
                                style: CustomTextStyle.text4.copyWith(
                                    color: CustomColor.lightGrey,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 40,
                                child: ListView(
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 15.w),
                                      width: 100.w,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: const Color(0XFF141921),
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          border: Border.all(
                                              width: 1,
                                              color: CustomColor.brown)),
                                      child: Center(
                                        child: Text(
                                          "250gm",
                                          style: CustomTextStyle.text5.copyWith(
                                              color: CustomColor.brown,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 15.w),
                                      width: 100.w,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: const Color(0XFF141921),
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "500gm",
                                          style: CustomTextStyle.text5.copyWith(
                                              color: CustomColor.lightGrey,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 15.w),
                                      width: 100.w,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: const Color(0XFF141921),
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "1000gm",
                                          style: CustomTextStyle.text5.copyWith(
                                              color: CustomColor.lightGrey,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                "Add to Cart",
                                style: CustomTextStyle.text3.copyWith(
                                  color: CustomColor.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
