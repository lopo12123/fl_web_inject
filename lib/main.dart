import 'package:fl_web_inject/phantom/phantom.dart';
import 'package:flutter/material.dart';

void main() {
  doInjection();

  runApp(const PhantomApp());
}

class PhantomApp extends StatelessWidget {
  const PhantomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fl_web_inject',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PhantomView(),
    );
  }
}
