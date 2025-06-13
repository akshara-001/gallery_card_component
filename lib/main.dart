import 'package:flutter/material.dart';
import 'my_Card.dart';
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
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(

        backgroundColor: Colors.blue.shade700,

        title: Text('GALLERY CARD',style: TextStyle(color: Colors.white)),
      ),
      body:
          
        SingleChildScrollView(
          child: Column(
            children: [
              MY_Card(title: 'Japan Cherry Trees', subtitle: 'Beneath the sakura, time slows, and the soul listens.', url: "https://www.japan-guide.com/thumb/XYZeXYZe2011_1680.jpg"),
              MY_Card(title: "Your Name", subtitle: "🌠 No matter the time, no matter the place — I’ll find you.", url: "https://wallpapercave.com/wp/wp1892089.jpg"),
              MY_Card(title: "Ireland and its People", subtitle: "Happiness in festivals", url: "https://ibiene.com/wp-content/uploads/2023/01/images-3.jpeg"),
              MY_Card(title: "North East: Beauty of India", subtitle: "North East India — Where Nature Whispers and Culture Speaks.", url: "https://cdn.wallpapersafari.com/97/17/N3sQTv.jpg"),
              MY_Card(title: "Lovely Runner", subtitle: "In every life , I will save you", url: "https://media.zenfs.com/en/comingsoon_net_477/97d5f44dd352bbeac229226af3eb1a9d")

              
              
            ],
          ),
        )

    );
  }
}
