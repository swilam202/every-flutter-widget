import 'package:flutter/material.dart';

//*Divider
//باختصار هي خط فاصل رأسي بين الويجيدتس وبين بعضها

class VerticalDividerWidget extends StatelessWidget {
  const VerticalDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: VerticalDivider(
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
