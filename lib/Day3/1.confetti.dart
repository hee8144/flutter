import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ConfettiController ctr; // 나중에 꼭사용할꺼야 -> late

  @override
  void initState() {
    super.initState();
    ctr = ConfettiController(duration: const Duration(seconds: 10));
  }
  @override
    Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                ctr.play();
              }, child: Text("클릭!")),
        ConfettiWidget(
          confettiController: ctr,
          blastDirectionality: BlastDirectionality
              .explosive, // don't specify a direction, blast randomly
          shouldLoop:
          true, // start again as soon as the animation is finished
          colors: const [
            Colors.green,
            Colors.blue,
            Colors.pink,
            Colors.orange,
            Colors.purple
          ],
            numberOfParticles:200,
            maximumSize:Size(100, 100)
        )
            ],
          ),
        ),
      ),
    );
  }
}

