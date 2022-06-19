import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(title: const Text("Example of MediaQuery"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.menu))],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.height/5,
                  height: MediaQuery.of(context).size.height/4,
                  color: Colors.deepOrange,
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.height/5,
                height: MediaQuery.of(context).size.height/4,
                color: Colors.blue,
              ),
              const SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.height/5,
                height: MediaQuery.of(context).size.height/4,
                color: Colors.yellowAccent,
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.deepOrange,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  alignment: Alignment.center,
                  child: const SizedBox(
                    child:
                    Text(
                        "Here are some examples of different Widgets like:\n AppBar\n SingleChildScrollView\n SizedBox\n Container and so on",
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
