import 'package:flutter/material.dart';

class TestTwo extends StatelessWidget {
  const TestTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(title: const Text('TestTwo')),
      body: const Center(child: Text('TestTwo')),
    );
  }
}
