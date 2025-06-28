import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmojiCard extends StatefulWidget{
  final String? label;
  final String? emoji;
   int? counter;
  final Color? colour;


  EmojiCard({ required this.label, required this.emoji, this.counter = 0,this.colour});

  _EmojiCardState createState() => _EmojiCardState();}

 class _EmojiCardState extends State<EmojiCard>{
  late int counter;
  @override
  void initState() {
    super.initState();
    counter = widget.counter ?? 0;
  }

  void incrementCounter() {
  setState(() {
    counter++;
  });
}
  @override
  Widget build(BuildContext context) {
   return Card(
     color: widget.colour,
     child: Column(
       children: [
         InkWell(
           splashColor: Colors.blueGrey,
           onTap: (){

             incrementCounter();
           },
             child: Text(widget.emoji!,style: TextStyle(fontSize: 60),)),
         Text(widget.label!,style: TextStyle(fontSize: 24)),
         Row(
           children: [
             Icon(Icons.thumb_up_alt_sharp),
             SizedBox(width: 20,),
             Text("$counter reactions")
           ],
         )
       ],
     ),
   );
  }

}