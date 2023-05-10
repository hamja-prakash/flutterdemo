import 'package:flutter/material.dart';
import 'package:flutterdemo/statelessandstatefull.dart';

class gridviewdemo extends StatelessWidget {
  const gridviewdemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Gridview Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: GridViewDemo(),
    );
  }
}

class GridViewDemo extends stateless {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var arrColors = [
      Colors.amber,
      Colors.red,
      Colors.blue,
      Colors.black,
      Colors.orange,
      Colors.pink,
      Colors.accents,
      Colors.cyan,
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('GridView Demo'),
        ),
        body: GridView.count(crossAxisCount: 5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            Container( color:  Colors.amber,),
            Container( color:  Colors.red,),
            Container( color: Colors.blue,),
            Container( color: Colors.black,),
            Container( color:  Colors.orange,),
            Container( color:Colors.pink,)

            // Container(color: arrColors[0],),
            // Container(color: arrColors[1],),
            // Container(color: arrColors[2],),
          ],)
    );
  }
}
