import 'package:flutter/material.dart';
import 'package:lets_learn_flutter/liquid_swipe.dart';
import 'package:lets_learn_flutter/list_tile.dart';
import 'package:lets_learn_flutter/text_codes/text_code_mediaquery.dart';
import 'package:lets_learn_flutter/text_codes/text_code_stack.dart';
import 'package:lets_learn_flutter/till_floating_action_button.dart';
import 'package:lets_learn_flutter/till_media_query.dart';

class WidgetHero extends StatefulWidget {
  const WidgetHero({Key? key}) : super(key: key);

  @override
  State<WidgetHero> createState() => _WidgetHeroState();
}

class _WidgetHeroState extends State<WidgetHero> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Hi! Let's learn Flutter Widgets",style: TextStyle(fontSize: 18),),
            centerTitle: true,
            backgroundColor: Colors.deepOrange,
            // leading: const Icon(Icons.code_rounded,size: 40,
            //   color: Colors.black,
            // ),
          ),
          drawer: Drawer(
            backgroundColor: Colors.deepOrange,
            child: ListView(
              children: [
                ListTile(
                title: const Text("MediaQuery",style: TextStyle(color: Colors.black,fontSize: 20),),
                subtitle: const Text("Tap to see code of MediaQuery",style: TextStyle(color: Colors.black),),
                  leading: const CircleAvatar(child: Icon(Icons.code_rounded,color: Colors.amber,),backgroundColor: Colors.black87,),
                  isThreeLine: true,
                  onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const TextCodeMediaQuery()));
                  },
              ),
                ListTile(
                title: const Text("Stack Widget",style: TextStyle(color: Colors.black,fontSize: 20),),
                subtitle: const Text("Tap to see code of Stack Widget",style: TextStyle(color: Colors.black),),
                  leading: const CircleAvatar(child: Icon(Icons.code_rounded,color: Colors.amber,),backgroundColor: Colors.black87,),
                  isThreeLine: true,
                  onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const TextCodeStack()));
                  },
              ),
              ],
            ),
          ),
          body: ListView(
            children: [
              ListTile(
                title: const Text("MediaQuery"),
                subtitle: const Text("Tap to see example of MediaQuery Widget"),
                leading: const CircleAvatar(child: Icon(Icons.widgets),),
                //trailing: const Icon(Icons.arrow_forward),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Homepage()));
                },
              ),
              ListTile(
                title: const Text("ListTile"),
                subtitle: const Text("Tap to see example of ListTile Widget"),
                leading: const CircleAvatar(child: Icon(Icons.widgets),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const List_Tile()));
                },
              ),
              ListTile(
                title: const Text("Liquid Swipe"),
                subtitle: const Text("Tap to see example of Liquid Swipe Widget"),
                leading: const CircleAvatar(child: Icon(Icons.widgets),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LSwipe()));
                },
              ),
              ListTile(
                title: const Text("Stack Widget"),
                subtitle: const Text("Tap to see example of Stack Widget"),
                leading: const CircleAvatar(child: Icon(Icons.widgets),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Till_Floating_Action_Button()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
