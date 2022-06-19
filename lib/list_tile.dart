import 'package:flutter/material.dart';

class List_Tile extends StatefulWidget {
  const List_Tile({Key? key}) : super(key: key);

  @override
  State<List_Tile> createState() => _ListTileState();
}

class _ListTileState extends State<List_Tile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: ListView(
            children: const [
              ListTile(
                title: Text("This is a ListTile"),
                subtitle: Text("This is a subtitle of a ListTile"),
                leading: CircleAvatar(child: Icon(Icons.message_rounded),),
              ),
              ListTile(
                title: Text("This is 2nd ListTile"),
                subtitle: Text("This is another subtitle of a ListTile"),
                leading: CircleAvatar(child: Icon(Icons.phone),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
