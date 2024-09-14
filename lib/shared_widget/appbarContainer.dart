import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppbarContainer extends StatefulWidget {
  final Widget icon;
  final Function onTap;
  const AppbarContainer({super.key, required this.icon, required this.onTap});

  @override
  State<AppbarContainer> createState() => _AppbarContainerState();
}

class _AppbarContainerState extends State<AppbarContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          gradient: const LinearGradient(
            colors: [
              Color(0XFF21262E),
              Color(0XFF0C0F14),
            ],
          ),
        ),
        child: widget.icon,
      ),
    );
  }
}
