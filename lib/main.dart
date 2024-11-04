import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("My Counter App",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),)),
            backgroundColor: Colors.deepOrangeAccent,
          ),
          body: Center(
              child: Text(
            count.toString(),
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          )),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              count++;
              setState(() {});
            },
            foregroundColor: Colors.white,
            backgroundColor: Colors.deepOrange,
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
