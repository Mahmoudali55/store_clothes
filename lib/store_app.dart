import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/app/connective_controller.dart';
import 'package:store/core/common/screen/no_network.dart';
import 'package:store/core/style/fonts/font_famaily_helper.dart';
import 'package:store/core/style/fonts/font_weigth_hlper.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectiveController.instance.isConnective,
      builder: (_, value, __) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              builder: (context, widget) {
                return Scaffold(
                  body: Builder(
                    builder: (context) {
                      ConnectiveController.instance.init();
                      return widget!;
                    },
                  ),
                );
              },
              home: const Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Flutter Demo Home Page',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'مرحبا بك في التطبيق',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Flutter Demo Home Page',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeightHelper.bold,
                          fontFamily: FontFamilyHelper.cairoEnglish,
                        ),
                      ),
                      Text(
                        'مرحبا بك في التطبيق',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeightHelper.bold,
                          fontFamily: FontFamilyHelper.cairoAribic,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const NoNetwork(),
          );
        }
      },
    );
  }
}
