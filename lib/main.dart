import 'package:everyflutterwidget/widgets/will%20pop%20scope.dart';
import 'package:flutter/material.dart';

import 'widgets/divider.dart';
import 'widgets/visibility.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DividerWidget(),
    );
  }
}
