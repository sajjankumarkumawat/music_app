import 'package:flutter/material.dart';
import 'package:music_app/Image/image.dart';
import 'package:music_app/persentation/page_2.dart';

class screen_1 extends StatefulWidget {
  const screen_1({super.key});

  @override
  State<screen_1> createState() => _screen_1State();
}

class _screen_1State extends State<screen_1> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
             Appimage.image1,),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 570),
                child: Text(
                  "Feel the beat",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 13),
                child: Text(
                  "Emmerse yourself into the \n\t\t\t world of music today",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Center(
              child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        elevation:MaterialStateProperty.all(5),
                          fixedSize: MaterialStateProperty.all(const Size(210, 45)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))
                       ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => Screen_2(),));
                      },
                      child: const Text(
                        "Continue" ,style: TextStyle(fontSize: 20),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
