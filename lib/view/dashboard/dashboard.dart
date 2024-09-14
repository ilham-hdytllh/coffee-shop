import 'package:coffeshop/constant/colors.dart';
import 'package:coffeshop/constant/textStyle.dart';
import 'package:coffeshop/shared_widget/appbarContainer.dart';
import 'package:coffeshop/view/dashboard/widget/cardProduct.dart';
import 'package:coffeshop/view/dashboard/widget/categoryProduct.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({super.key});

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  String _category = "All";

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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "Find the best\ncoffee for you",
                  style: CustomTextStyle.text1.copyWith(
                      fontWeight: FontWeight.w600, color: CustomColor.white),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: double.infinity,
                  height: 45.h,
                  decoration: BoxDecoration(
                    color: CustomColor.drawerContainer,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: SvgPicture.asset(
                            "assets/icons/search_icon.svg",
                            color: CustomColor.grey,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.r),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.r),
                                borderSide: BorderSide.none,
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.r),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                              hintStyle: CustomTextStyle.text5
                                  .copyWith(color: CustomColor.grey),
                              hintText: 'Find Your Coffee...',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  height: 34.h,
                  width: double.infinity,
                  child: ListView(
                    padding: EdgeInsets.only(left: 3.w),
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      CategoryProduct(
                        categoryName: "All",
                        selected: _category == "All",
                        onTap: (value) {
                          setState(() {
                            _category = value;
                          });
                        },
                      ),
                      CategoryProduct(
                        categoryName: "Cappuccino",
                        selected: _category == "Cappuccino",
                        onTap: (value) {
                          setState(() {
                            _category = value;
                          });
                        },
                      ),
                      CategoryProduct(
                        categoryName: "Expresso",
                        selected: _category == "Expresso",
                        onTap: (value) {
                          setState(() {
                            _category = value;
                          });
                        },
                      ),
                      CategoryProduct(
                        categoryName: "Americano",
                        selected: _category == "Americano",
                        onTap: (value) {
                          setState(() {
                            _category = value;
                          });
                        },
                      ),
                      CategoryProduct(
                        categoryName: "Maccau",
                        selected: _category == "Maccau",
                        onTap: (value) {
                          setState(() {
                            _category = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  height: 230.h,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: const [
                      CardProduct(
                        productName: "Cappuccino",
                        productDesc: "With Steamed Milk",
                        productPrice: 4.20,
                        productImage: "assets/images/coffe1.png",
                      ),
                      CardProduct(
                        productName: "Cappuccino",
                        productDesc: "With Foam",
                        productPrice: 4.20,
                        productImage: "assets/images/coffe2.png",
                      ),
                      CardProduct(
                        productName: "Cappuccino",
                        productDesc: "With Steamed Milk",
                        productPrice: 4.20,
                        productImage: "assets/images/coffe1.png",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Coffee Beans",
                      style: CustomTextStyle.text3.copyWith(
                          fontWeight: FontWeight.w600,
                          color: CustomColor.white),
                    ),
                    Text(
                      "See all",
                      style: CustomTextStyle.text4.copyWith(
                          fontWeight: FontWeight.w600,
                          color: CustomColor.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  height: 230.h,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: const [
                      CardProduct(
                        productName: "Robusta Beans",
                        productDesc: "Medium Roasted",
                        productPrice: 4.20,
                        productImage: "assets/images/bean_coffe1.png",
                      ),
                      CardProduct(
                        productName: "Cappuccino",
                        productDesc: "With Steamed Milk",
                        productPrice: 4.20,
                        productImage: "assets/images/bean_coffe2.png",
                      ),
                      CardProduct(
                        productName: "Robusta Beans",
                        productDesc: "Medium Roasted",
                        productPrice: 4.20,
                        productImage: "assets/images/bean_coffe1.png",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
