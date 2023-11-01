import 'package:flutter/material.dart';
class ThemeDataWidget extends StatelessWidget {
  const ThemeDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.green,
        brightness: Brightness.light
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.teal,
        brightness: Brightness.dark
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('Hello there!'),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: (){},
        ),
      ),
    );
  }
}