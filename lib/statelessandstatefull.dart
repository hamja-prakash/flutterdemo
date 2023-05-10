import 'package:flutter/material.dart';
import 'package:flutterdemo/main.dart';

class stateless extends StatelessWidget {
  const stateless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stateless Widget',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends stateless {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless widget demo'),
      ),
      body: Center(
        child: Container(
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
          ),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(width: 2, color: Colors.black),
              boxShadow: [BoxShadow(blurRadius: 11, spreadRadius: 5,color: Colors.grey)]),
        ),
      ),
    );
  }
}
