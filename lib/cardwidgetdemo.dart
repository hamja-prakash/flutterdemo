import 'package:flutter/material.dart';
import 'package:flutterdemo/statelessandstatefull.dart';
import 'package:intl/intl.dart';

class cardwidgetdemo extends StatefulWidget {
  const cardwidgetdemo({Key? key}) : super(key: key);

  @override
  State<cardwidgetdemo> createState() => _cardwidgetdemoState();
}

var date = DateTime.now();

class _cardwidgetdemoState extends State<cardwidgetdemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('Test 123'),),
      body: Center(
        child: Container(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 5,
                shadowColor: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Hello World',style: TextStyle(fontSize: 22),),
                ),
              ),

              SizedBox(height: 20,),
              
              Text('Time is:${date.hour}:${date.minute}:${date.second}'),
              Text('Current Time is: ${DateFormat('yMMMMd').format(date)}'),
              ElevatedButton(onPressed: (){
              setState(() {
              });
              }, child: Text('Current Time'))
            ],
          ),
        ),
      ),
    );
  }
}

