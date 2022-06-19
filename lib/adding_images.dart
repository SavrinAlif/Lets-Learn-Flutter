import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AddImage extends StatelessWidget {
  const AddImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child:
            Image.network("https://images.pexels.com/photos/8602985/pexels-photo-8602985.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",),
          ),
        ),
      ),
    );
  }
}
