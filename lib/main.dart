import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
// This widget is the root of your application.
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Scaffold Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ), // ThemeData
      home: Scaffold(
          appBar: AppBar(
            title: Text('Pandora'),
          ), // AppBar
          body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print('Brazaletes');
                  },
                  child: Text('Brazaletes'),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Color(0xffff9898),
                    textStyle: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    print('Anillos');
                  },
                  child: Text('Anillos'),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff000000)),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Color(
                            0xffff7989); //when button pressed, return blue
                      }
                      return Color(0xffbdfff3);
                    }),
                    textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic);
                      }
                      return TextStyle();
                    }),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    print('Collares');
                  },
                  child: Text('Collares'),
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                    textStyle: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )),
    ); // Scaffold ); // MaterialApp
  }
}
