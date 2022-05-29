// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 1170,
      color: Colors.white,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            height: 110,
                                            margin: EdgeInsets.only(
                                              right: 10,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Image.asset(
                                                        "img_mypic.png",
                                                        height: 100,
                                                        width: 100)),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                    width: 70,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: Colors.blueGrey),
                                                    child: Text("Saloni",
                                                        textAlign:
                                                            TextAlign.center),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Column(
                                            children: [
                                              Padding(
                                                  padding:
                                                  EdgeInsets.only(top: 20),
                                                  child: RichText(
                                                      textAlign: TextAlign.left,
                                                      text: TextSpan(children: [
                                                        WidgetSpan(
                                                          child: Icon(Icons.phone,
                                                              size: 15),
                                                        ),
                                                        TextSpan(
                                                            text: " +91 8488951300")
                                                      ]))),
                                              Padding(
                                                  padding:
                                                  EdgeInsets.only(top: 10),
                                                  child: RichText(
                                                      textAlign: TextAlign.left,
                                                      text: TextSpan(children: [
                                                        WidgetSpan(
                                                          child: Icon(Icons.email,
                                                              size: 15),
                                                        ),
                                                        TextSpan(
                                                            text: " salonisaraiya1320@gmail.com")
                                                      ]))),


                                            ],
                                          ),

                                      ],

                                    ),
                                  ),

                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:2),
                              child: Column(
                                children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.orangeAccent
                                  ),
                                  child: Text("+\nFollow me"),
                                ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top:10),
                                        child: Text("110\nDesign created", textAlign: TextAlign.center,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:10,left:10),
                                        child: Text("10\nBoards",textAlign: TextAlign.center),
                                      )
                                    ],
                                  ),
                              ],
                              ),
                            ),

                          ],
                        ),

                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child:
                        Padding(
                          padding: const EdgeInsets.only(top:50),
                          child: Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width:195,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black)
                                    ),
                                    child: Text("\$1000\nBalance",),),
                                Container(
                                  alignment: Alignment.center,
                                  width:195,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black)
                                    ),
                                    child: Text("14\nOrders")),
                              ],
                            ),
                        )
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding:EdgeInsets.only(top:30,left: 30),
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: Text("Your Favourites", style: TextStyle(
                        color: Colors.black,
                        fontSize: 18),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top:10),
                    child:Text("Payments",style: TextStyle(
                        color: Colors.black,
                        fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:10),
                    child:  Text("Referral Code",style: TextStyle(
                        color: Colors.black,
                        fontSize: 18))
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: Text("Promotions",style: TextStyle(
                        color: Colors.black,
                        fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: Text("Settings",style: TextStyle(
                        color: Colors.black,
                        fontSize: 18)),
                  ),
                ],
              )
            ),
          ),
          Align(
              alignment: Alignment.center,
              child:
              Padding(
                padding: const EdgeInsets.only(top:50),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width:195*2,
                      height: 70,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)
                      ),
                      child: Text("Logout"),),

                  ],
                ),
              )
          )
        ],
      ),
    ));
  }
}
