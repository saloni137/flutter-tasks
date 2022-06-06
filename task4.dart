import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height:100,
        width: 100,
        child: Column(
          children: [
            const Text("Enter Email"),
            TextField(controller: email,),
            const Text("Enter Password"),
            TextField(controller: password,obscureText: true,),
            ElevatedButton(onPressed: (){ login()}, child: const Text("Login"))
          ],
        ),
      ),
    );
  }

  login() async{
    var dio = Dio();
    var data = {
      email:email.text,
      password:password.text
    };
    final response = await dio.post("https://reqres.in/api/login",data: data);
    log(response.data["token"]);
  }
}
