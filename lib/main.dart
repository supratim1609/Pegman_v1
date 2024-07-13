import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<NavigatorState> jKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: false,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: '',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: secondary,
            scaffoldBackgroundColor: white,
            appBarTheme: const AppBarTheme(
              backgroundColor: white,
              foregroundColor: black,
            )),
        builder: EasyLoading.init(
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 0.9),
              child: child!,
            );
          },
        ),
        initialRoute: AppRoutes.splash,
        getPages: appRouter,
        navigatorKey: jKey,
      ),
      // child: ,
    );
  }
}
