import 'package:flutter/material.dart';
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
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
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




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(

        backgroundColor: Colors.purple.shade400,

        title: Text('PROFILE',style: TextStyle(color: Colors.white70)),
      ),
      body:

      Center(
        child: Container(
          width: 360,
          height: 520,
          decoration: BoxDecoration(
            color: Colors.purple.shade200,
            borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),


          ),
          child: Column(
            children: [

              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.pinkAccent,
                    width: 3
                  ),

                ),
                child: ClipOval(child: Image.asset("assets/images/profile.jpg")),
              ),
              Container(
                height: 10,
              ),
              Container(

                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.purple,
                          width: 3
                    )
                  ),
                  child: Center(child: Text("Itzmee",style: TextStyle( fontWeight: FontWeight.bold, fontSize: 44, fontFamily: 'Myfonts'),))),
                Text("App Developer",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              Container(
                height: 20,
              ),
              Container(
                width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.deepPurple,
                      width: 3
                    ),
                    color: Colors.white70
                  ),
                  child: Center(child: Text("Turning coffee into clean Flutter code ☕📱 "
                      "| Crafting sleek apps, one pixel at a time "
                      "| Forever debugging, forever learning.",style:TextStyle( fontSize: 15,color: Colors.black87),))),
                  Container( height: 20,),
                  Row(
                    children: [
                      Container(width: 10,),
                      Icon(Icons.app_registration),
                      Text("www.instagram.com"),
                      Container( width: 30,),
                      Icon(Icons.account_circle_rounded),
                      Text("www.linkedin.com")
                    ],
                  )
            ],
          ),
        ),
      ),

    );
  }
}
