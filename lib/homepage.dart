import 'package:counter/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEBDEF0),
        centerTitle: true,
        title: Text(
          "COUNTER",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Consumer<CounterProvider>(
        builder: (BuildContext context, value, Widget? child) {
          return Center(
              child: Text(
            "${value.count}",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ));
        },
      ),
      floatingActionButton: Consumer<CounterProvider>(
        builder: (context, value, child) {
          return FloatingActionButton(
            onPressed: () {
              value.add();
            },
            child: Icon(Icons.add),
          );
        },
      ),
    );
  }
}
