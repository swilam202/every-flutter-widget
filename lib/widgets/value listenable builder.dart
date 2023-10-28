import 'package:flutter/material.dart';

//*ValueListenableBuilder
//باختصار دي لو عندك قيمة بتتغير وعايز الفيمة تتحدث علي الشاشة علطول
//دي زي ال 
//setState
//بس من غير
//stateful widget


class ValueListenableBuilderWidget extends StatelessWidget {
  const ValueListenableBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {

    //بنعرف المتغير من النوع ده وبنديله النوع بتاعه
    //بنديله قيمة ابتدائية بصفر
    ValueNotifier<int> valueNotifier = ValueNotifier(0);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //هنا بنحط الحاجة الي هتستمع للتغير
            ValueListenableBuilder(
              valueListenable: valueNotifier,
              builder: (context, value, child) {
                return Text(valueNotifier.value.toString());
              },
            ),
            //هنا كل الي بعمله بزود قيمته بس
            ElevatedButton(
              onPressed: () {
                valueNotifier.value++;
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
