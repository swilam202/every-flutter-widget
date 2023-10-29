import 'package:flutter/material.dart';

//*ToggleButtons
//لو عايز تحط كذا ويدجيت وعايز تخلي قيمهم
//true or false

class ToggleButtonWidget extends StatefulWidget {
  const ToggleButtonWidget({super.key});

  @override
  State<ToggleButtonWidget> createState() => _ToggleButtonWidgetState();
}

class _ToggleButtonWidgetState extends State<ToggleButtonWidget> {
  //هنا بنحط القيم بتعات الايقونات سواء
  //true or false

  List<bool> selected = [
    false,
    true,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ToggleButtons(
          //هنا  لما بتدوس علي حاجة عايز تعمل ايه
          onPressed: (index) {
            setState(() {
              selected[index] = !selected[index];
            });
          },
          //هنا بنمررله فيمة المتغير
          isSelected: selected,
          //هنا الايقونات نفسها
          children: const [
            Icon(Icons.add),
            Icon(Icons.flutter_dash),
            Icon(Icons.factory),
            Icon(Icons.face),
          ],
        ),
      ),
    );
  }
}
