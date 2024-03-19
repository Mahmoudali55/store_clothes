import 'package:flutter/material.dart';
import 'package:store/core/common/screen/page_under_Build.dart';
import 'package:store/core/routes/base_routes.dart';
import 'package:store/test_one.dart';
import 'package:store/test_tow.dart';

class AppRoutes {
  static const String testOne = 'test one';
  static const String testTwo = 'test two';
  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case testOne:
        return BaseRoute(page: const TestOne());
      case testTwo:
        return BaseRoute(page: const TestTwo());
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
