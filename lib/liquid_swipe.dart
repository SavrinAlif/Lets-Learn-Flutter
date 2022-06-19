import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LSwipe extends StatefulWidget {
  const LSwipe({Key? key}) : super(key: key);

  @override
  State<LSwipe> createState() => _LSwipeState();
}

class _LSwipeState extends State<LSwipe> {
  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.red,Colors.green,Colors.blue]
          )
        ),
      ),
      Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.amber,Colors.yellowAccent,Colors.redAccent]
          )
        ),
      ),
      Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.cyan,Colors.purpleAccent,Colors.white],
            )
        ),
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text("Swipe from left to right",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
        // backgroundColor: Colors.white,
        // centerTitle: true,
        // ),
        body: Padding(
          padding: const EdgeInsets.all(0),
          child: LiquidSwipe(
            pages: (pages),
            fullTransitionValue: 800,
            enableLoop: true,
            waveType: WaveType.liquidReveal,
          ),
        )
      ),
    );
  }
}
