import 'dart:math';

import 'package:flutter/material.dart';



//*Transform
//او عندك صورة او ويدجيت عايز تحركها
//هنا مثلا بحركها حول  نقطة الطرف
//في خيارات كتيرة جدا غير ده طبعا


class TransformWidget extends StatefulWidget {
  const TransformWidget({super.key});

  @override
  State<TransformWidget> createState() => _TransformWidgetState();
}

class _TransformWidgetState extends State<TransformWidget> {
  //هنا معرفين متغير الي بناء عليه هنغير قيمة التحويل
  double ratio = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform(
          //هنا بنختار نوع التحويل
          //هنا بخليه يلف كل مرة ربع دورة حول الطرف
          transform: Matrix4.rotationZ(pi * ratio),
          
          child: GestureDetector(
            //هنا بزود كل مرة ربع دورة
            onTap: ()=>setState(() => ratio +=0.25),
            child: SizedBox(
              height: 200,
              width: 200,
              child: Image.asset('assets/images/image1.jpg',fit: BoxFit.fill,),
            ),
          ),
        ),
      ),
    );
  }
}