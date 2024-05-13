import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:may13/pages/page1/widgets/days.dart';
import 'package:may13/pages/page2/widgets/rows.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Page2Screen extends StatelessWidget {
  const Page2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xffF5CDB4),
        ),
        width: 375.w,
        height: 812.h,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                height: 300.h,
                width: 375.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(26),
                    topRight: Radius.circular(26),
                  ),
                  color: Color(0xffFAF0E1),
                ),
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 110.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/image.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Gap(20),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Jack",
                          style: TextStyle(
                              fontSize: 25.sp, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Party organizer",
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: const Color(0xffB8B6AF),
                          ),
                        ),
                        const Gap(20),
                        ZoomTapAnimation(
                          child: Container(
                            width: 100.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: const Color(0xffE17855),
                            ),
                            child: const Center(
                              child: Text(
                                "Rad more",
                                style: TextStyle(color: Colors.white),
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
            Positioned(
              top: 220,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                width: 375.w,
                height: 1.sh,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "October ",
                          style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Holidays",
                          style: TextStyle(
                              fontSize: 25.sp, color: const Color(0xffB8B6AF)),
                        ),
                      ],
                    ),
                    const Gap(20),
                    Row(
                      children: [
                        Column(
                          children: [
                            Thanks(
                              image: "assets/images/image4.png",
                              text1: "Thanksgivin",
                              colorButton: const Color(0xffD7E1C8),
                              text2: "\$ 174.99",
                            ),
                            const Gap(20),
                            Thanks(
                              image: "assets/images/umbrella.png",
                              text1: "Halloween",
                              colorButton: const Color(0xffD7E1C8),
                              text2: "\$ 326.00",
                            ),
                            const Gap(20),
                            Thanks(
                              image: "assets/images/tea-leaf.png",
                              text1: "Thanksgivin",
                              colorButton: const Color(0xffE17855),
                              text2: "\$ 51.00",
                            ),
                            const Gap(10),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Party  ",
                          style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "planning",
                          style: TextStyle(
                              fontSize: 25.sp, color: const Color(0xffB8B6AF)),
                        ),
                      ],
                    ),
                    const Gap(10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Days(
                            image: "assets/images/image2.png",
                            text1: "Birthdays",
                            text2: "",
                          ),
                          const Gap(20),
                          Days(
                            image: "assets/images/tea-leaf.png",
                            text1: "Birthdays",
                            text2: "",
                          ),
                          const Gap(20),
                          Days(
                            image: "assets/images/image4.png",
                            text1: "Birthdays",
                            text2: "",
                          ),
                          const Gap(20),
                          Days(
                            image: "assets/images/image2.png",
                            text1: "Birthdays",
                            text2: "",
                          ),
                          const Gap(20),
                          Days(
                            image: "assets/images/tea-leaf.png",
                            text1: "Birthdays",
                            text2: "",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
