import 'package:flutter/material.dart';

//*Wrap
//بص دي باختصار لو انت عندك حاجات كتير بدل ما تعملها
//row or column
// هي بتاخد
//List<Widgte>
//وهي بترصهم بشكل افقي ولو عدد العناصر كان محتاج اكبر من مساحة عرض الجهاز
//بتنزل صف تاني تحت

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          //هنا بتحب يكون العناصر في النص ولا في البداية
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          //هنا لو حابب العناصر تبقي افقية ولا راسية
          direction: Axis.horizontal,
          //هنا لو حبيتها تبفي رأسية  تحب تبدا من تحت لفوق ولا من فوق لتجت
          verticalDirection: VerticalDirection.up,
          // هنا المسافة الرأسية بين العناصر
          spacing: 10,
          //هنا المسافة الافقية بين الصفوف
          runSpacing: 15,
          //هنا حاطط الويدجيتس
          //في حالتي دي انا حاطط ليست من الكونتينرات كل واحد بلون معين
          children: List.generate(
            3,
            (index) => Container(
              color: Colors.primaries[index],
              height: 50,
              width: 50,
            ),
          ),
        ),
      ),
    );
  }
}
