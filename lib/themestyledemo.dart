import 'package:flutter/material.dart';
import 'package:flutterdemo/statelessandstatefull.dart';
import 'package:flutterdemo/ui_helper/util.dart';

class themestyle extends StatelessWidget {
  const themestyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'themestyle demo',
      theme: ThemeData(
        primaryColor: Colors.red,
        textTheme: TextTheme(
          titleLarge: TextStyle(color: Colors.white, fontSize: 20,fontFamily: 'FontMain'),
          titleMedium: TextStyle(color: Colors.white, fontSize: 14,fontFamily: 'FontMain'),
        )
      ),
      home: themestyledemo(),
    );
  }
}
 class themestyledemo extends stateless {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('themestyledemo'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('data 123',style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.orange),),
            Text('data 1234',style: Theme.of(context).textTheme.titleMedium,),
            Text('data 125',style: Theme.of(context).textTheme.titleLarge,),
            Text('data 1244',style:textStyle11(textColor: Colors.blue),),
            Text('data 56435',style:textStyle16(textColor: Colors.red,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}