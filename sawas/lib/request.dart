import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),

    );

  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () { Scaffold.of(context).openDrawer(); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },
  ),
        title: Text("Sawas Recycling center"),
      ),


      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10,10,10,20),
            //color: Colors.blueAccent,
            child: TextField(
              
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "enter request here"
              ),
            )
          ),

          Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(10,10,10,50),
            
                child: TextField(
              
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "additional remarks here"
              ),
            ),
          ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {

                },
                child: Text('submit this part'),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.amber
                ),
                ),

              ElevatedButton(
                onPressed: () {

                },
                child: Text('Request done'),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.amber
                ),
                ),

              
            ],
          )
        ],
      )
    );
  }
}