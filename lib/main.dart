import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromRGBO(27, 52, 75, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "25:00",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 48,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 300,
          ),
          Row(
            children: [
              ElevatedButton(
                child: const Text(
                  "Stop",
                  style: TextStyle(
                    color: Color.fromARGB(230, 248, 69, 69),
                    fontSize: 24,
                  ),
                  ),
                onPressed: (){
                  //_StopTimer():
                },
                style: ElevatedButton.styleFrom(
                primary: Colors.black,
                padding: const EdgeInsets.all(40.0),
                shape: CircleBorder(
                  side: BorderSide(color: Colors.orange),
                ),
                ),
              ),
              ElevatedButton(
                child: const Text(
                  "Start",
                  style: TextStyle(
                    color: Color.fromARGB(230, 248, 69, 69),
                    fontSize: 24,
                  ),
                  ),
                onPressed: (){
                  //_StopTimer():
                },
                style: ElevatedButton.styleFrom(
                primary: Colors.black,
                padding: const EdgeInsets.all(40.0),
                shape: CircleBorder(
                  side: BorderSide(color: Colors.orange),
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