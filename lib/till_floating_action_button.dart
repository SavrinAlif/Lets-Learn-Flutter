import 'package:flutter/material.dart';

class Till_Floating_Action_Button extends StatelessWidget {
  const Till_Floating_Action_Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ContainerHeight = ScreenHeight/2;
    var ScreenWidht = MediaQuery.of(context).size.width;
    var ContainerWidht = ScreenWidht;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            floatingActionButton: FloatingActionButton(onPressed: (){},
              child: const Icon(Icons.add),
              backgroundColor: Colors.green,
              splashColor: Colors.red,),
            body: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: ScreenWidht,
                    height: 200,
                    color: Colors.green,
                  ),
                  const Positioned(child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.red,
                  ),
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}
