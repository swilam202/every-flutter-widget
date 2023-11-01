import 'package:flutter/material.dart';

//*TimePicker
//هنا بنستخدمه عشان نختار وقت
//او بمعني اصح نختار الساعة او الدفايق في اليوم

class TimePickerWidget extends StatefulWidget {
  const TimePickerWidget({super.key});

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  //هنا بنعرف متغير وبنحطله قيمة مبدأية بالساعة الحالية
  TimeOfDay timeOfDay = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //هنا بنعرض الساعة الي اخترناها
            Text(
              '${timeOfDay.hour}:${timeOfDay.minute}',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            OutlinedButton(
              onPressed: () async {
                //هنا بنعرض الخانة الي بناخد منها الوقت
                await showTimePicker(
                  context: context,
                  //هنا الاختيار المبدئي
                  initialTime: timeOfDay,
                  //هنا لو عايز تغير النص الي بيظهر تحت الساعات
                  hourLabelText: 'Hours label',
                  //هنا لو عايز تغير النص الي بيظهر تحت الدقايق

                  minuteLabelText: 'Minute label',
                  //هنا نوع الادخال عايز شكل ساعة وتعد تختار منها
                  //ولا عايز خانتين تكتب فيهم علطول
                  initialEntryMode: TimePickerEntryMode.input,
                  //هنا عايز تكون الساعة تحتها الخانتين ولا جنبها
                  orientation: Orientation.landscape,
                  //هنا بنخليه يغير القيمة بعد اما نختار
                ).then(
                  (value) {
                    setState(
                      () {
                        timeOfDay = value ?? TimeOfDay.now();
                      },
                    );
                  },
                );
              },
              child: const Icon(Icons.date_range),
            ),
          ],
        ),
      ),
    );
  }
}
