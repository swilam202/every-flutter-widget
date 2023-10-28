import 'package:flutter/material.dart';

import 'widgets/toggle buttons.dart';
import 'widgets/tooltip.dart';
import 'widgets/transform.dart';
import 'widgets/tween animation builder.dart';
import 'widgets/will pop scope.dart';
import 'widgets/divider.dart';
import 'widgets/value listenable builder.dart';
import 'widgets/vertical divider.dart';
import 'widgets/visibility.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToggleButtonWidget(),
    );
  }
}
