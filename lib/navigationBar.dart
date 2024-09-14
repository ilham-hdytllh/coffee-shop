import 'package:coffeshop/constant/colors.dart';
import 'package:coffeshop/provider/pageController.dart';
import 'package:coffeshop/view/cart/cart.dart';
import 'package:coffeshop/view/dashboard/dashboard.dart';
import 'package:coffeshop/view/favorite/favorite.dart';
import 'package:coffeshop/view/history/history.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:svg_flutter/svg_flutter.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  late PageController _pageController;
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _pageController = context.read<PageControllerProvider>().pageController;
    _selectedIndex = 0;
  }

  void jumpToPage(int pageIndex) {
    _pageController.jumpToPage(pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.black,
      body: PageView(
        onPageChanged: (newPage) {
          setState(() {
            _selectedIndex = newPage;
          });
        },
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: const [
          HomeDashboard(),
          CartView(),
          FavoriteView(),
          HistoryView(),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Center(
          child: BottomNavigationBar(
            enableFeedback: false,
            currentIndex: _selectedIndex,
            onTap: (index) {
              jumpToPage(index);
            },
            selectedItemColor: CustomColor.brown,
            unselectedItemColor: CustomColor.grey,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: CustomColor.black,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/home_icon.svg",
                  width: 24,
                  height: 24,
                  color: _selectedIndex == 0
                      ? CustomColor.brown
                      : CustomColor.grey,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/cart_icon.svg",
                  width: 24,
                  height: 24,
                  color: _selectedIndex == 1
                      ? CustomColor.brown
                      : CustomColor.grey,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/heart_icon.svg",
                  width: 24,
                  height: 24,
                  color: _selectedIndex == 2
                      ? CustomColor.brown
                      : CustomColor.grey,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/notification_icon.svg",
                  width: 24,
                  height: 24,
                  color: _selectedIndex == 3
                      ? CustomColor.brown
                      : CustomColor.grey,
                ),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
