import 'package:flutter/material.dart';
import 'package:store/core/extensions/context_extensions.dart';
import 'package:store/core/routes/app_routes.dart';

class TestOne extends StatelessWidget {
  const TestOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: const Text('Test One')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Test One'),
            TextButton(
              onPressed: () {
                context.pushNamed(AppRoutes.testTwo);
              },
              child: const Text('Go to Test tow'),
            ),
          ],
        ),
      ),
    );
  }
}
