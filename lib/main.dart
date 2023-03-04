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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  int getAmount(int amount) {
    return amount;
  }

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        children: [
          getContainer('Nike', '10'),
          SizedBox(height: 12),
          getContainer('Adidas', '20'),
          SizedBox(height: 12),
          getContainer('Puma', '40'),
        ],
      )),
    );
  }

  Widget getContainer(String brandName, String discount) {
    return Container(
      height: 200,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          // color: Colors.green,
          color: Colors.blueGrey[100]),
      child: Column(
        children: [
          SizedBox(height: 14),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(100)),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            brandName,
            style: TextStyle(color: Colors.pinkAccent, fontSize: 20),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(border: Border.all(width: 2)),
                child: Text(
                  discount,
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              ),
              SizedBox(width: 10),
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(border: Border.all(width: 2)),
                child: Text(
                  'Rahul kumar Paswan',
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
