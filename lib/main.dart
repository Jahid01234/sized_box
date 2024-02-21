import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:AppBar(
       backgroundColor: Colors.cyanAccent,
       title: Text("Sized Box "),
       centerTitle: true,
     ) ,
      body:  SafeArea(
        child: Column(
          children: [
            SizedBox( // The SizedBox use for distance between
              height: 10,
            ),

            Container(
              margin: EdgeInsets.all(50),
              color: Colors.deepOrange,
              child: Center(child: Text('Container-1'),),
            ),

            SizedBox( // The SizedBox use for distance between
              height: 10,
            ),

            Container(
              height: 200,
              width: 520,
              color: Colors.deepOrange,
              child: Center(child: Text('Container-2'),),
            ),

            SizedBox( // The SizedBox use for distance between
              height: 10,
            ),


            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.deepOrange,
                child: Center(child: Text('Container-3'),),
              ),
            ),


          ],

        ),
      ),

    );
  }

}
