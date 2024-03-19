// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:store/core/style/colors/colors_dark.dart';
import 'package:store/core/style/colors/colors_light.dart';

class MyColors extends ThemeExtension<MyColors> {
  final Color? mainColor;
  const MyColors({
    required this.mainColor,
  });
  @override
  ThemeExtension<MyColors> copyWith({Color? mainColor}) {
    return MyColors(
      mainColor: mainColor,
    );
  }

  @override
  ThemeExtension<MyColors> lerp(
    covariant ThemeExtension<MyColors>? other,
    double t,
  ) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(
      mainColor: mainColor,
    );
  }

  static const MyColors dark = MyColors(
    mainColor: ColorsDark.mainColor,
  );
  static const MyColors light = MyColors(
    mainColor: ColorsLight.mainColor,
  );
}
