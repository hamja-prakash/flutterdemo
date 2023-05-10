import 'package:flutter/material.dart';
import 'package:flutterdemo/statelessandstatefull.dart';

class userimagewithname extends StatelessWidget {
  const userimagewithname({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stateless Widget',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: userdata(),
    );
  }
}

class userdata extends stateless {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User demo'),
        ),
        body: Center(
          child: Container(
            height: 220,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.lightBlue,
            ),
            child: Column(
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset('assets/images/people.jpg'),
                )),
                Text(
                  'Test data',
                  style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: 'FontMain'),
                ),
              ],
            ),
          ),
        ));
  }
}
