import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// ignore: must_be_immutable
class Thanks extends StatelessWidget {
  late String image;
  late String text1;
  late String text2;
  Color colorButton = const Color(0xffD7E1C8);
  Thanks(
      {required this.image,
      required this.text1,
      required this.text2,
      required this.colorButton});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 50.w,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(image),
                ),
                color: const Color(0xffFAEBC8),
              ),
            ),
            const Gap(20),
            Column(
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xffB8B6AF),
                  ),
                ),
                const Gap(7),
                Text(
                  text2,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const Gap(80),
            ZoomTapAnimation(
              child: Container(
                width: 70.w,
                height: 27.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: colorButton,
                ),
                child: const Center(
                  child: Text(
                    "View",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Gap(20),
        Container(
          width: 300.w,
          height: 2.h,
          decoration: const BoxDecoration(color: Color(0xffF3F3F3)),
        )
      ],
    );
  }
}
