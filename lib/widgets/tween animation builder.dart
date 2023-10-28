import 'package:flutter/material.dart';

class TweenAnimationBuilderWidget extends StatefulWidget {
  const TweenAnimationBuilderWidget({super.key});

  @override
  State<TweenAnimationBuilderWidget> createState() =>
      _TweenAnimationBuilderWidgetState();
}

class _TweenAnimationBuilderWidgetState
    extends State<TweenAnimationBuilderWidget> with SingleTickerProviderStateMixin{
  

  @override
  Widget build(BuildContext context) {
    double targetValue = 200.0;

    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0.0, end: targetValue),
          duration: const Duration(seconds: 1),
          builder: (context, size, child) {
            return IconButton(
              iconSize: size,
              icon: const Icon(Icons.flutter_dash),
              onPressed: (){
            setState(() {
              targetValue =   300.0;
            });
            },
            );
          },
        ),
      ),
    );
  }
}
