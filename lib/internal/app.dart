import 'package:eat_fun_app/presenation/provider/bool_toggle.dart';
import 'package:eat_fun_app/presenation/screens/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => ChangeNotifierProvider(
        create: (context) => ToggleBoolProvider(),
        child: MaterialApp.router(
          routerConfig: AppRouter().config(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
