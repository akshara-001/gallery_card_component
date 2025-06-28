import 'package:first_new/EmojiCard.dart';
import 'package:first_new/card.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFF121212),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int i = 0;
  List<String> q = ["Bonus 🔥: Push yourself, because no one else is going to do it for you.","Bonus 🔥: The pain you feel today will be the strength you feel tomorrow."," Bonus 🔥: Don’t watch the clock; do what it does. Keep going"];

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        backgroundColor: Colors.pinkAccent,

        title: Text('LetsGO!',style: TextStyle(color: Colors.white)),
      ),
      body:

          Column(
           children: [
             Stack(
               children: [
                 Container(
         
                   height: 150,
                   child: Image.network("http://clipart-library.com/img/742112.png"),
                 ),
                 CircleAvatar(
                   radius: 60,
                   backgroundImage: AssetImage("assets/images/img.png"),),
                 Positioned(
                   left: 95,
                     top: 80,
                     child: CircleAvatar( backgroundColor: Colors.green,radius: 10,)),
         
         
         
               ],
         
             ),
             Container(
               width: double.infinity,
               child: Row(
                 children: [
                   Expanded(
                     child: Card(
                       color: Colors.white70,
                       elevation: 2,
                       child: Row(
                         children: [
                           Icon(Icons.task,size: 30,color: Colors.brown),
                           Text("Tasks : 5",style: TextStyle(color: Colors.black),)
                         ],
                       ),
                     ),
                   ),
                    Expanded(
                      child: Card(
                        elevation: 2,
                        color: Colors.white70,
                        child: Row(
                          children: [
                           Text("⏰",style: TextStyle(fontSize: 24)),
                            SizedBox(width:8),
                            Text("Focus: 6 hrs",style: TextStyle(color: Colors.black))
                          ],
                        ),
                      ),
                    ),
                   Expanded(
                     child: Card(
                       elevation: 2,
                       color: Colors.white70,
                       child: Row(
                         children: [
                          FaIcon(FontAwesomeIcons.boltLightning,size: 30,color: Colors.yellow.shade700,),
                          SizedBox(width:8),
                           Text("Energy : High",style: TextStyle(color: Colors.black))
                         ],
                       ),
                     ),
                   )
                 ],
               ),
             ),
             Text("Today's Tasks",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.blueGrey),),
              Stack(
            children:[ Container(
                   width: double.infinity,
                   height: 400,
                   child: SingleChildScrollView(
                     child: GridView.count(
                         shrinkWrap: true,
                         physics: NeverScrollableScrollPhysics(),
                         crossAxisCount: 2,
                         children:[ Card1(title: "Workout",des: "From 5 pm to 6 pm , Two workout routines of emi wong ",icon: FaIcon(FontAwesomeIcons.dumbbell,color: Colors.black,),),
                     Card1(title: "Study",des: "From 8 pm to 10 pm , Revising Coding DSA ",icon2: "📖",),
                               Card1(title:"Walk",des: "10K steps goal ",icon2: "🚶‍♀️",),
                           Card1(title: "Cooking",des:"Learning cooking from mom ",icon2: "🥘"),
                           Card1(title: "Cleaning",des:"Dusting of house",icon2:"🧹")
                         ]
                         ),
                   ),
                 ),
             Positioned(
               left: 300,
               top:  300,

               child: Container(
                   width:75,
                   height: 80,
                   child: InkWell(
                     onTap: (){
                       setState(() {

                         ScaffoldMessenger.of(context).showSnackBar(

                             SnackBar(content: Text(q[i]),
                               duration: Duration(seconds: 4),

                             )

                         );

                         i++;
                         if(i == q.length ) i = 0;
                       }
                       );

                     },
                       child: Image.network("https://clipartcraft.com/images/fire-clipart-emoji-2.png"))),
             ),
              Positioned(
                top: 375,
                left: 250,
                  child: Text("Need Motivation",style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontFamily: 'totaro',fontSize: 20)))
    ]
              ),
             

             IconButton(onPressed: (){
               ScaffoldMessenger.of(context).showSnackBar(
                 SnackBar(content: Text("Adding new task feature coming soon⏳"))
               );



             }, icon: Icon(Icons.add_circle,size: 30))
         
         
           ],
         ),


    );
  }
}
