import 'package:flutter/material.dart';

//*WillPopScope
//باختصار لو انت بتحول من صفحة لصفحة تانية واستخدمت 
// push named
//انت كده بتلغي كل الصفحات الي كانت موجودة قبلك 
//ف لو المستخدم جرب يرجع ل ورا هيطلعه بره التطبيق
//الحل في الويدجيت دي انك بتشوف لو جه يرجع وملقاش  صفحة يرجعلها
//بتنقذ دالة معينة

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {

    //هنا مثلا حاطط زرار بيحول من صفحة لصفحة تانية عادي بس بيستخدم 
    //push replacement

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const SecondPage(),
              ),
            );
          },
          child: const Text('Navigate to second page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {

    //هنا في الصفحة التانية لة جه يرجع مش هيلاقي صفحة 
    //هنا بتحط الصفحة كلها في 
    //WillPopScope
    //في دالة جوة اسمها 
    //onWillPop
    //دي بتنفذ فيها الي انت عايزه 
    // في حالتي دي انا مكتفي انه ميرجعش 
    //انت ممكن تعمل الي انت عايزه بقي
    return WillPopScope(
      onWillPop: () async{
        return false;
      },
      child: const Scaffold(
        body: Center(
          child: Text('Second Page'),
        ),
      ),
    );
  }
}
