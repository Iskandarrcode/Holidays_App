import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:may13/pages/page1/widgets/days.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Page1Screen extends StatefulWidget {
  const Page1Screen({super.key});

  @override
  State<Page1Screen> createState() {
    return _MyPage1Screen();
  }
}

class _MyPage1Screen extends State<Page1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 375.w,
        height: 812.h,
        child: Stack(
          children: [
            Image.asset(
              "assets/images/boy.jpeg",
              width: 375.w,
              height: 400.h,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 350.h,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 30.w),
                width: 375.w,
                height: 165.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Color(0xffE17855),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Autumn day",
                          style: TextStyle(
                            fontSize: 25.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Hello Jack",
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/head.jpg"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 470.h,
              child: Container(
                width: 375.w,
                padding: EdgeInsets.symmetric(horizontal: 37.h, vertical: 30.w),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ZoomTapAnimation(
                              child: Container(
                                width: 60.w,
                                height: 55.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xffFAEBC8),
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/images/tea-leaf.png"),
                                  ),
                                ),
                              ),
                            ),
                            const Gap(20),
                            ZoomTapAnimation(
                              child: Container(
                                width: 60.w,
                                height: 55.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xffF0A590),
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/images/umbrella.png"),
                                  ),
                                ),
                              ),
                            ),
                            const Gap(20),
                            ZoomTapAnimation(
                              child: Container(
                                width: 60.w,
                                height: 55.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xffD2E6E6),
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/image4.png"),
                                  ),
                                ),
                              ),
                            ),
                            const Gap(20),
                            ZoomTapAnimation(
                              child: Container(
                                width: 60.w,
                                height: 55.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xffFACDAF),
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/shower.png"),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Gap(20),
                    Row(
                      children: [
                        Text(
                          "Day ",
                          style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Schedule",
                          style: TextStyle(
                              fontSize: 25.sp, color: const Color(0xff969AA6)),
                        ),
                      ],
                    ),
                    const Gap(20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Days(
                            image: "assets/images/image2.png",
                            text1: "Wedding",
                            text2: "03: 50",
                          ),
                          const Gap(20),
                          Days(
                            image: "assets/images/tea-leaf.png",
                            text1: "Wedding",
                            text2: "03: 50",
                          ),
                          const Gap(20),
                          Days(
                            image: "assets/images/image4.png",
                            text1: "Wedding",
                            text2: "03: 50",
                          ),
                          const Gap(20),
                          Days(
                            image: "assets/images/image2.png",
                            text1: "Wedding",
                            text2: "03: 50",
                          ),
                          const Gap(20),
                          Days(
                            image: "assets/images/tea-leaf.png",
                            text1: "Wedding",
                            text2: "03: 50",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
