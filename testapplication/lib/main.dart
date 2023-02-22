import 'package:flutter/material.dart';
import 'dart:math';

void main() =>runApp (MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:ChangeColor()
    );
  }
}
class ChangeColor extends StatefulWidget {
  const ChangeColor({Key? key}) : super(key: key);



  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {

  Color startColor = Colors.white;

  void randomColor(){
    setState(() {
      startColor = Color(Random().nextInt(0xffffffff + 1));
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: randomColor,
      child: Container(
        color: startColor,
        child: Center(
          child: Text('Hey there',
            style:TextStyle(height:0 ,fontSize:25,decoration: TextDecoration.none),
          ),
        ),
      ),
    );
  }
}






