// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({Key? key}) : super(key: key);

  @override
  _StopWatchState createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  int seconds = 0;
  int minutes = 0;
  List<String> logs = [];
  bool flag = false;

  Stream<String> timer(bool flag) async* {
    if(flag){
      while(logs.length != 15) {
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
    else {
      yield "Start the timer";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        title: Text(
          'Timer',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              StreamBuilder<Object>(
                stream: timer(flag),
                builder: (context, snapshot) {
                  return Column(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          snapshot.data.toString(),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: ListView.builder(
                            itemCount: logs.length,
                            itemBuilder: (BuildContext context, int index) =>
                                Padding(
                                  padding: const EdgeInsets.only(top:10),
                                  child: SizedBox(
                                    height:20,width:20, child: Text(logs[index],style: TextStyle(fontSize: 20),)),
                                )
                        ),
                      ),
                    ],
                  );
                }
              ),
              Container(
                width: 130,
                height: 200,
                alignment: Alignment.bottomCenter,
                color: Colors.white,
                child: ElevatedButton(
                  onPressed: () {
                    flag = true;
                  },
                  child: Text("Start",style: TextStyle(fontFamily: 'Poppins',
                    color: Colors.white,),),
                ),
              ),
            ],
          ),

        ),

      ),
    );
  }
}
