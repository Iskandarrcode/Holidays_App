import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// ignore: must_be_immutable
class Days extends StatelessWidget {
  late String image;
  late String text1;
  late String text2;

  Days(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      child: Column(
        children: [
          Container(
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
          const Gap(10),
          Text(
            text1,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Text(
                text2,
                style:
                    TextStyle(fontSize: 18.sp, color: const Color(0xff969AA6)),
              ),
              Text(
                " Time",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff969AA6),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
