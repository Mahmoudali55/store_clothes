import 'package:flutter/material.dart';
import 'package:store/core/style/images/app_images.dart';

class NoNetwork extends StatelessWidget {
  const NoNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.noNetwork),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
