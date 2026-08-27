import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // 1. استدعاء المكتبة

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 2. تغليف التطبيق بـ ScreenUtilInit
    return ScreenUtilInit(
      // دي الأبعاد الافتراضية اللي المصمم شغال بيها على Figma (تقدر تعدلها حسب مقاس تصميمك)
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
          ),
          debugShowCheckedModeBanner: false,
          home: const SplashView(), // يفضل إضافة const هنا لتحسين الأداء
        );
      },
    );
  }
}
