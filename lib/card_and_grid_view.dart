import 'package:flutter/material.dart';

class CardAndGrid extends StatefulWidget {
  const CardAndGrid({Key? key}) : super(key: key);

  @override
  State<CardAndGrid> createState() => _CardAndGridState();
}

class _CardAndGridState extends State<CardAndGrid> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Card(
            elevation: 15,
            shadowColor: Colors.lightBlueAccent,
            color: Colors.indigo,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: SizedBox(
              height: 250,
              width: 250,
              child: SizedBox(
                width: 20,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.count(
                      shrinkWrap: true,
                      mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 2,
                      children: [
                        Container(
                        height: 100,
                        width: 100,
                        color: Colors.deepOrange,
                      ),
                        Container(
                        height: 100,
                        width: 100,
                        color: Colors.lightGreenAccent,
                      ),
                        Container(
                        height: 100,
                        width: 100,
                        color: Colors.blueAccent,
                      ),
                        Container(
                        height: 100,
                        width: 100,
                        color: Colors.yellowAccent,
                      ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
