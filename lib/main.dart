import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lets_learn_flutter/adding_images.dart';
import 'package:lets_learn_flutter/hero_widget.dart';
import 'package:lets_learn_flutter/liquid_swipe.dart';
import 'package:lets_learn_flutter/list_tile.dart';
import 'package:lets_learn_flutter/till_floating_action_button.dart';
import 'card_and_grid_view.dart';
import 'till_media_query.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []); //FullScreenView
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Homepage(),
      //home: List_Tile(),
      //home: Till_Floating_Action_Button(),
     // home: AddImage(),
      //home: LSwipe(),
      //home: CardAndGrid(),
      home: WidgetHero(),
    );
  }
}


