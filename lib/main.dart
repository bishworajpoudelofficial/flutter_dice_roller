import 'dart:math';
import 'package:flutter/material.dart';

void main()=> runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Dice App",
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 1;


  changeDice(){
    setState(() {
      diceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice Roller"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          // Image
          Center(child: Image.asset("assets/$diceNumber.png", height: 250, width: 250,)),
          // Button
          MaterialButton(
            color: Colors.blue,
            onPressed: changeDice,
            child: const Text("Roll", style: TextStyle(color: Colors.white),),
          ),
          const SizedBox(height: 70),
         // Text
          const Text("#FlutterWithBRP", style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}