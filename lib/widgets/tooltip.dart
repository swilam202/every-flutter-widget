import 'package:flutter/material.dart';

//*Tooltip
//دي لو عايز صورة او اي ويدجيت عموما  يبقي ليها وصف
// يعني لو دوست دوسة مطولة علي الويدجيت دي يظهرلي كلام

class ToolTipWidget extends StatelessWidget {
  const ToolTipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Tooltip(
          //هنا بتحط الرسالة او الكلام الي عايز تظهره
          message: 'This is a music player image',
          //دي لو حابب ان النص يظهر فوق ولا تحت
          preferBelow: false,
          //هنا لما الكلام يظهر عايز تعمل ايه
          onTriggered: () {
            print('image pressed');
          },
          //هنا الويدجيت الي عايز تطبق عليها
          child: SizedBox(
            height: 200,
            width: 200,
            child: Image.asset('assets/images/image1.jpg'),
          ),
        ),
      ),
    );
  }
}
