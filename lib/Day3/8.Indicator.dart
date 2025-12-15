import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Myindicator(),
    );
  }
}

class Myindicator extends StatefulWidget {
  const Myindicator({super.key});

  @override
  State<Myindicator> createState() => _HomePageState();
}

class _HomePageState extends State<Myindicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularPercentIndicator(
          radius: 100.0,
          lineWidth: 10.0,
          percent: 0.8,
          header: const Text("Icon header"),
          backgroundColor: Colors.grey,
          progressColor: Colors.blue,
          animation: true,
          animationDuration: 1200,
        ),
      ),
    );
  }
}
