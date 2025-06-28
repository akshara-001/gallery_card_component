import 'package:flutter/material.dart';
class MY_Card extends StatefulWidget {
    final String title;
    final String subtitle;
    final String url;
    const MY_Card({ super.key , required this.title, required this.subtitle, required this.url });
    State<MY_Card> createState() => _my_CardState(); }
    class _my_CardState extends State<MY_Card> {
      bool isLiked = false;
      int rating = 0;
    Widget build(BuildContext context) {


    return Container(
      height: 340,
      width: 380,
      margin: EdgeInsets.all(10),
      child: Card(

      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10) ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.blueGrey,
        onTap: (){
          print("Selected");
        },
          child: Column(

          children: [
          Image.network(widget.url,height: 200 , fit: BoxFit.cover,),
          Text(widget.title, style: TextStyle( fontSize: 20 , fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(widget.subtitle, style: TextStyle(fontSize: 14),),
          ),
          Row(
          children: [
          IconButton(onPressed: (){

           setState ( () {
          isLiked = !isLiked;

          ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content:
          Row(
          children: [
          Icon(
          isLiked ? Icons.favorite_rounded : Icons.heart_broken_rounded,
          color: Colors.white,),
          SizedBox(width: 100,),
          Text(isLiked ? "Liked!!" : "Unliked")

          ],
          ),
            duration: Duration(seconds: 2),


          )
          );
          } );
            },



           icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border, color: isLiked ? Colors.red : Colors.grey,),
            ),
          SizedBox(width:60),
          Row(
            children:
              List.generate(5, (index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.01),
                  child: IconButton(
                    iconSize: 28,
                      constraints: BoxConstraints(),
                      padding: EdgeInsets.zero,
                      onPressed: (){
                    setState(() {
                      rating = index + 1;

                    });
                  },
                      icon: Icon(index < rating ? Icons.star : Icons.star_border,color: index < rating ? Colors.yellow: Colors.grey,)),
                );
              })

          )



          ],
          )

          ],
          ),
        ),
      )
      ),
    );

    }
    }
