import 'package:flutter/material.dart';

class expanderdemo extends StatefulWidget {
  const expanderdemo({Key? key}) : super(key: key);

  @override
  State<expanderdemo> createState() => _expanderdemoState();
}

class _expanderdemoState extends State<expanderdemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Demo'),
      ),

      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              width: 50,
              color: Colors.blue,
            ),
          ),

          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              width: 50,
              color: Colors.redAccent,
            ),
          ),

          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              width: 50,
              color: Colors.amber,
            ),
          ),

          Expanded( flex: 2,
            child: Container(
              height: 100,
              width: 50,
              color: Colors.cyan,
            ),
          ),
        ],
      )
    );
  }
}
