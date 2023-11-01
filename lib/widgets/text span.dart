import 'package:flutter/material.dart';

//*Text span
//لو عايز نص بخصائص كتير زي كل كلمة بلون او نص معين

class TextSpanWidget extends StatelessWidget {
  const TextSpanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text.rich(
          //هنا بنحط النص عموما 
          TextSpan(
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            //هنا لو عايز تحطله الوان مختلفة او خصائص مختلفة
            children: [
              TextSpan(text: 'Hi there,'),
              TextSpan(
                text: 'my name is ',
                style: TextStyle(color: Colors.red),
              ),
              TextSpan(
                text: 'mahmoud ',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
