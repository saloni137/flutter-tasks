import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Task1',
      home: MyTextField(),

    );
  }
}

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});
  
  @override
  _MyTextField createState() => _MyTextField();

}

class _MyTextField extends State<MyTextField> {
  final text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(child: Column (children: [
         TextField(
          controller: text,
        ),
        TextButton(
          onPressed: (){showDialog(context: context, builder: (context){
          return AlertDialog(content: Text(text.text));
        });
        }, child: const Text('Press me!'))
       ])));
  }
}
