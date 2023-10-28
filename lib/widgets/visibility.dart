import 'package:flutter/material.dart';

//*Visibility
//هنا الويدجيت دي بتستخمها عشان تخفي او تظهر حاجة

class VisibilityWidget extends StatefulWidget {
  const VisibilityWidget({super.key});

  @override
  State<VisibilityWidget> createState() => _VisibilityWidgetState();
}

class _VisibilityWidgetState extends State<VisibilityWidget> {
  //بنعرف  متغير من خلاله نخليها ظاهرة ولا لا
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //هنا بتغير فيمة المتغير
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: const Text('Change Visability'),
            ),
            Visibility(
              // ال 3  دول بتستخدمهم عشان لما تخفي الويدجيت مكانها يفضل محجوز لها
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              //هنا بياخد ويدجيت بيحطها بدل الويدجيت الاساسية لما يبقي مخفي
              //! بس خلي بالك مش بيشتغل مع 3 الي فوق لازم تشيلهم
              replacement: Container(
                color: Colors.blue,
                height: 200,
                width: 200,
              ),
              //دي عشان لو الويديجيت الي بتختفي وتظهر دي لو زرار او بتنفذ دالة معينة
              //كده بتخليها تتنذ وانت بتتغط عليها حتي لو كانت مخفية
              maintainInteractivity: true,
              //هنا بتحط قيمة المتغير الي بيخفي ويظهر
              visible: isVisible,
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  'assets/images/image1.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
