import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:may13/pages/page1/page1_screen.dart';
import 'package:may13/pages/page2/page2_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: PageView(
            children: const [
              Page1Screen(),
              Page2Screen(),
            ],
          ),
        );
      },
    );
  }
}
