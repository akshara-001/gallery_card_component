import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Card1 extends StatefulWidget{
  @override
  State<Card1> createState() => CardState();

  String? title;
  String? des;
  FaIcon? icon;
  bool pressed = false;
  String? icon2;
Card1({ required this.title, this.des,this.icon,this.icon2});

}
class CardState extends State<Card1>{



  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple.shade800.withOpacity(0.9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (widget.icon != null) widget.icon!,
            if(widget.icon2!= null) Text(widget.icon2!,style:TextStyle(fontSize: 30)),
          Text(widget.title!,style: TextStyle(fontSize:30,fontWeight: FontWeight.bold)),
          Text(widget.des!,style:TextStyle( fontStyle: FontStyle.italic)),

          IconButton(onPressed: (){

            widget.pressed = !widget.pressed;
            setState(() {

            });


          }, icon:Icon(widget.pressed != false? Icons.check_box:Icons.check_box_outline_blank ))

        ],
      ) ,
    );
  }

}