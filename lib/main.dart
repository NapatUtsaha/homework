import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GUESS THE NUMBER'),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.purple.shade200,
            border: Border.all(width: 5.0, color: Colors.grey),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(5.0, 2.0),
                blurRadius: 10.0,
                spreadRadius: 10.0,
              )
            ]),
        //alignment: Alignment.center,
        child: Center(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
              padding: const EdgeInsets.only(
                top: 150.0,
                left: 0.0,
                bottom: 0.0,
                right: 0.0,
              ),
              child: Text('GUESS\n''THE NUMBER' , style: TextStyle(fontSize: 30.0),),

            ),

              Row(
                
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0.0,
                      left: 200.0,
                      bottom: 0.0,
                      right: 0.0,
                    ),
                    child: Image.asset('assets/images/guess_logo.png', width: 200.0,),

                  ),

                ],
              ),
              ElevatedButton(
                child: Text('GUESS'),
                onPressed: () {},
              ),
            ],
          ),

        ),

      ),
    );
  }
}
