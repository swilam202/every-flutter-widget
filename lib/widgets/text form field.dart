import 'package:flutter/material.dart';

//*TextFormField
//لو عايز تعمل ادخال لنص

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({super.key});

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  //هنا بنعرف المتغير والكنترولر
  String text = '';
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          child: TextFormField(
            //هنا بنحط نوع الكيبورد سواء ارقام او ايملات او غيرها
            keyboardType: TextInputType.visiblePassword,
            //هل انت عايز النص يبقي مخفي
            obscureText: false,
            //هنا عايز تحط ايه بدل الحروف المخفية
            //!بس لازم تحط حاجة واحدة بس
            obscuringCharacter: 'x',
            //هنا دالة بتتنفذ كل لما النص يتغير
            onChanged: (value) {
              print('vale: $value');
            },
            //هنا الكنترولر  وممكن من خلاله تستخدم النص المحفوظ في الخانة
            controller: controller,
            //هل عايز المستخدم يقدر يكتب في الخانة ولا يشوفها بس
            readOnly: false,
            //هنا بتحط شروطك عشان تضمن المستخدم يكتب الي انت عايزه
            validator: (value) {
              if (value!.length < 6) {
                return 'Short password';
              } else
                return null;
            },
            //دي شكل الخانة
            decoration: InputDecoration(
              //هنا لو عايز تخلي ليه خصائص سواء بتكتب فيه او مش بتستخدمه
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              //هنا في حالة لو كان في حالة انك مش بتستخدمه
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              //هنا في حالة لو كان في حالة انك دايس عليه
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              //هنا النص الي بيظهر فوق الخانة
              label: const Text('Password'),
              //هنا بيظهر جواها  فثيحالة انك مش دايس عليه او لسا مكتبتش حاجة
              hintText: 'input password here',
              //هنا ايقونة بتظهر علي جنب الخانة نفسها
              icon: const Icon(Icons.add),
              // هنا ايقونة بتظهر علي في بداية الخانة نفسهاوانت بتكتب
              prefix: const Icon(Icons.delete),
              // هنا ايقونة بتظهر علي في نهاية الخانة نفسهاوانت مش بتكتب

              prefixIcon: const Icon(Icons.person),
              // هنا ايقونة بتظهر علي في نهاية الخانة نفسهاوانت بتكتب

              suffix: const Icon(Icons.flutter_dash),
              // هنا ايقونة بتظهر علي في بداية الخانة نفسهاوانت مش بتكتب

              suffixIcon: const Icon(Icons.add_alarm),
              //هنا بتحط لون الخلفية
              fillColor: Colors.blue,
              //!بس لازم تخلي دي
              //!true
              //!عشان يحط اللون
              filled: true,
            ),
          ),
        ),
      ),
    );
  }
}
