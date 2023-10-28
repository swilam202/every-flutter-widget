import 'package:flutter/material.dart';

//*Divider
//باختصار هي خط فاصل عمودي بين الويجيدتس وبين بعضها

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              //هنا بتحط لونه
              color: Colors.black,
              // هنا المسافة المتسابة بين بداية الشاشة وبداية الخط الفاصل
              indent: 50,
              // هنا المسافة المتسابة بين النهاية الشاشة والنهاية الخط الفاصل
              endIndent: 50,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
