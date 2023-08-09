import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: const Text('Ask me Anything'),
        backgroundColor: Colors.black12,
        centerTitle: true,
      ),
      body: const HomePage(),
    ),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    void changeImage() {
      setState(() {
        number = Random().nextInt(5) + 1;
      });
    }

    return Center(
      child: TextButton(
        onPressed: () {
          changeImage();
        },
        child: Image(image: AssetImage('images/ball$number.png')),
      ),
    );
  }
}
