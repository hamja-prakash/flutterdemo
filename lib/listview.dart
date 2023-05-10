import 'package:flutter/material.dart';

class listview extends StatefulWidget {
  const listview({Key? key}) : super(key: key);

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {
  @override
  Widget build(BuildContext context) {
    var arrName = ['Test1', 'Test2', 'Test3', 'Test4', 'Test5'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Demo'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
             child: Text('$index',style: TextStyle(color: Colors.white),),
              backgroundColor:Colors.green,
            ),
            title: Text(arrName[index]),
            subtitle: Text('Number'),
            trailing: Icon(Icons.add),
          );
        },
        itemCount: arrName.length,
        separatorBuilder: (context,index){
         return Divider(height:50,thickness:1,);
    },
      ),
    );
  }

// * Listview Seprater example *

  // ListView.separated(
  // itemBuilder: (context, index)
  // {
  // return Text(arrName[index],style: TextStyle(fontSize: 20),);
  // },
  // itemCount: arrName.length,
  // separatorBuilder: (context, index)
  // {
  // return Divider(height: 50, thickness: 1,);
  // },
  // ),


   // * Listview Builder example *

  // ListView.builder(
  // itemBuilder: (context, index)
  // {
  // return Text(arrName[index],style: TextStyle(fontSize: 20),);
  // },
  // itemCount: arrName.length,
  // itemExtent: 50,
  // ),


// * Simple Listview example *
// body: ListView(
// scrollDirection: Axis.horizontal,
// reverse: false,
// children: [
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Text(
// 'Test1',
// style: TextStyle(fontSize: 20),
// )),
//
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Text(
// 'Test2',
// style: TextStyle(fontSize: 20),
// )),
//
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Text(
// 'Test3',
// style: TextStyle(fontSize: 20),
// )),
//
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Text(
// 'Test4',
// style: TextStyle(fontSize: 20),
// )),
//
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Text(
// 'Test5',
// style: TextStyle(fontSize: 20),
// )),
// ],
// ));
}
