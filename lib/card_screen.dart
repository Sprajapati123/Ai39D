import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Card", style: TextStyle(fontSize: 24, color: Colors.white)),
            Text(
              "Simple and easy to use app",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Column(
                      children: [
                        // Image()
                        // Text()
                      ],
                    ),
                  ),
                ),
                Expanded(child: Card(child: Text("world"))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
