import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _seconds = 0;
  int _minutes = 25;
  Timer _timer = Timer(const Duration(seconds: 1), () {});

  void _stopTimer(){

    _timer.cancel();
    _seconds = 0;
    _minutes = 25;

  }

  void _startTimer(){

    // ignore: unnecessary_null_comparison
    if (_timer != null){
      _timer.cancel();
    }
    if (_minutes > 0 ){
      _seconds = _minutes * 60;
    }
    if (_seconds > 60) {

      _minutes = (_seconds/60).floor();
      _seconds -= (_minutes * 60);
    }

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_seconds > 0){
          _seconds--;
        }
        else {
          if (_minutes > 0){
            _seconds=59;
            _minutes--;
          }
          else {
            _timer.cancel();
            // ignore: avoid_print
            print("Timer completo.");
          }
        }
      });
     });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color.fromRGBO(27, 52, 75, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$_minutes : $_seconds",
                style: const TextStyle(
                  color: Colors.redAccent,
                  fontSize: 48,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 300,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (){
                  _stopTimer();
                },
                style: ElevatedButton.styleFrom(
                primary: Colors.black,
                padding: const EdgeInsets.all(40.0),
                shape: const CircleBorder(
                  side: BorderSide(color: Colors.orange),
                ),
                ),
                child: const Text(
                  "Stop",
                  style: TextStyle(
                    color: Color.fromARGB(230, 248, 69, 69),
                    fontSize: 24,
                  ),
                  ),
              ),
              ElevatedButton(
                onPressed: (){
                  _startTimer();
                },
                style: ElevatedButton.styleFrom(
                primary: Colors.black,
                padding: const EdgeInsets.all(40.0),
                shape: const CircleBorder(
                  side: BorderSide(color: Colors.orange),
                ),
                ),
                child: const Text(
                  "Start",
                  style: TextStyle(
                    color: Color.fromARGB(230, 248, 69, 69),
                    fontSize: 24,
                  ),
                  ),
              ),
            ],
          )



        ],
      ),
    );
    
  }
}