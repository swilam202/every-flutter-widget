import 'package:flutter/material.dart';

class TimePickerWidget extends StatefulWidget {
  const TimePickerWidget({super.key});

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  TimeOfDay timeOfDay = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${timeOfDay.hour}:${timeOfDay.minute}',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            OutlinedButton(
              onPressed: () async {
                await showTimePicker(
                  context: context,
                  initialTime: timeOfDay,
                ).then((value) {
                  setState(() {
                    timeOfDay = value ?? TimeOfDay.now();
                  });
                });
              },
              child: const Icon(Icons.date_range),
            ),
          ],
        ),
      ),
    );
  }
}
