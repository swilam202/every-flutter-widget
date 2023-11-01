import 'package:flutter/material.dart';


//*ThemeData
//ده عشان تعرف تغير الثيمات والالوان بتعات التطبيق
//في واحد لل الثيم المظلم او الفاتح
//وفي حاجة بتتحكم فيهم وتختار تستخدم مين
//والالوان دي ياما بتستخدم في التطبيق مبدئيا الا لو انت غيرتها
//وممكن تحط قيم تستخدكها في اي حته


class ThemeDataWidget extends StatelessWidget {
  const ThemeDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //من هنا بنختار سواء مظلم او فاتح
      themeMode: ThemeMode.light,
      theme: ThemeData(
        //هنا بنخلي لون الخلفية 

        scaffoldBackgroundColor: Colors.green,
        //هنا بتخلي الاضائة فاتحة وبتخلي لون النصوص اسود
        brightness: Brightness.light,
        //هنا بنحط الفونتات وممكن نستخدمها بعد كده
        textTheme: const TextTheme(
          displaySmall: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ), 
        ),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.teal,
         //هنا بتخلي الاضائة فاتحة وبتخلي لون النصوص ابيض
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('Hello there!'),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: (){},
        ),
      ),
    );
  }
}