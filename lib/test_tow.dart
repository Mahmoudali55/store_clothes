import 'dart:js';

import 'package:flutter/material.dart';
import 'package:store/core/extensions/context_extensions.dart';

class TestTwo extends StatelessWidget {
  const TestTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TestTwo')),
      body: Center(
          child: Text(
        'TestTwo',
        style: TextStyle(fontSize: 30, color: context.colors.mainColor),
      )),
    );
  }
}
