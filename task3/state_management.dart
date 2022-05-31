// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({Key? key}) : super(key: key);

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {

  int seconds = 0;
  int minutes = 0;
  List<String> logs = [];
  bool flag = false;
  Stream<String> timer(bool flag) async* {
    while(flag){
      while(logs.length != 20) {
        await Future.delayed(const Duration(seconds: 1));
        seconds++;
        if(seconds > 59){
          seconds = 0;
          minutes++;
        }
        if(seconds % 20 == 0){
          logs.add("$minutes:$seconds");
        }
        yield "$minutes:$seconds";
      }
      logs = [];
      yield "Timer Over";
      flag = false;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StreamBuilder(
          stream: timer(flag),
          builder: (context, snapshot) {
            if (snapshot.data != null) {
              return Column(
                children: [
                  Text(
                    snapshot.data.toString(), style: TextStyle(fontSize: 30),),
                  SizedBox(
                      height: 200,
                      width: 200,
                      child: ListView.builder(itemCount: logs.length,
                          itemBuilder: (BuildContext context, int index) =>
                              Text(logs[index]))
                  )
                ],
              );
            }
            return Column(
              children: [
                Text("Start the timer", style: TextStyle(fontSize: 30))
              ],
            );
          },
        ),
        ElevatedButton(onPressed: (){flag = true;}, child: Text("Start"))
      ],

    );
  }
}

