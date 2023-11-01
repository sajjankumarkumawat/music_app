import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/Image/image.dart';

import '../model/image/image.dart';

class Screen_2 extends StatefulWidget {
  const Screen_2({super.key});

  @override
  State<Screen_2> createState() => _Screen_2State();
}

class _Screen_2State extends State<Screen_2> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: NetworkImage(Appimage.image2),
              opacity: 1.3,
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 150, top: 90),
                  child: Text(
                    "Welcome back!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 150, top: 10),
                  child: Text(
                    "What do you feel like today?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: 40,
                      width: 360,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                      child: const TextField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          hintText: 'Enter your name',
                          prefixIcon:
                              Icon(CupertinoIcons.search, color: Colors.black),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.green, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.green, width: 2.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                  width: 10,
                ),
                const TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(
                      text: "Recent",
                    ),
                    Tab(
                      text: "Top 50",
                    ),
                    Tab(
                      text: "Chill",
                    ),
                    Tab(
                      text: "R&B",
                    ),
                    Tab(
                      text: "Festival",
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height,
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: size.height/3,
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              physics: const ScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  margin: const EdgeInsets.symmetric(horizontal:7.5,vertical: 10),
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            ImageOne[index].image),
                                        fit: BoxFit.cover,
                                      ),
                                      color: Colors.white),
                                );
                              },
                            ),
                          ),
                          Container(
                            height: size.height/3,
                            color: Colors.cyan,
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: 3,
                              physics: const ScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  margin: const EdgeInsets.symmetric(horizontal:7.5,vertical: 10),
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            ImageOne[index].image),
                                        fit: BoxFit.cover,
                                      ),
                                      color: Colors.white),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
