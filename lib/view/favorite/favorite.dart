import 'package:coffeshop/constant/colors.dart';
import 'package:coffeshop/constant/textStyle.dart';
import 'package:coffeshop/shared_widget/appbarContainer.dart';
import 'package:coffeshop/view/favorite/widget/favoriteCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

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
              "Favorite",
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
              FavoriteCard(),
              FavoriteCard(),
            ],
          ),
        ),
      ),
    );
  }
}
