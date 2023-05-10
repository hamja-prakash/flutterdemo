import 'package:flutter/material.dart';
import 'package:flutterdemo/cardwidgetdemo.dart';
import 'package:flutterdemo/datepickerdemo.dart';
import 'package:flutterdemo/expandeddemo.dart';
import 'package:flutterdemo/gridviewdemo.dart';
import 'package:flutterdemo/listview.dart';
import 'package:flutterdemo/statelessandstatefull.dart';
import 'package:flutterdemo/themestyledemo.dart';
import 'package:flutterdemo/userdemo.dart';
import 'package:flutterdemo/userinputdemo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Container'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                child: Center(
                    child: Text(
                  'Container',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              TextButton(
                child: Text('Click here'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const expanderdemo()),
                  );
                },
                onLongPress: () {
                  print('Text button long tapped');
                },
              ),
              ElevatedButton(
                child: Text('Eleveted button'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const stateless()),
                  );
                },
              ),
              OutlinedButton(
                child: Text('Outlined button'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const listview()),
                  );
                },
              ),

              OutlinedButton(
                child: Text('Navigate to User Demo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => userdata()),
                  );
                },
              ),

              OutlinedButton(
                child: Text('Navigate to theme style'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => themestyledemo()),
                  );
                },
              ),

              OutlinedButton(
                child: Text('Navigate to card widget demo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => cardwidgetdemo()),
                  );
                },
              ),

              OutlinedButton(
                child: Text('Navigate to user input demo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => userinput()),
                  );
                },
              ),

              OutlinedButton(
                child: Text('Navigate to date picker demo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DatePickerDemo()),
                  );
                },
              ),

              OutlinedButton(
                child: Text('Navigate to Gridview demo'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => gridviewdemo()),
                  );
                },
              ),

              SizedBox(
                height: 20,
              ),
              Container(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/flutter.jpg')),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'A',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    'B',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    'C',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    'D',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    'E',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    'F',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        print('Inkwell click');
                      },
                      child: Container(
                        child: Center(
                            child: InkWell(
                          onTap: () {
                            print('Text Tapped');
                          },
                          child: Text(
                            'Inkwell',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )),
                        height: 200,
                        width: 200,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        print('Inkwell click');
                      },
                      child: Container(
                        child: Center(
                            child: InkWell(
                          onTap: () {
                            print('Text Tapped');
                          },
                          child: Text(
                            'Inkwell',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )),
                        height: 200,
                        width: 200,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        print('Inkwell click');
                      },
                      child: Container(
                        child: Center(
                            child: InkWell(
                          onTap: () {
                            print('Text Tapped');
                          },
                          child: Text(
                            'Inkwell',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )),
                        height: 200,
                        width: 200,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        print('Inkwell click');
                      },
                      child: Container(
                        child: Center(
                            child: InkWell(
                          onTap: () {
                            print('Text Tapped');
                          },
                          child: Text(
                            'Inkwell',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )),
                        height: 200,
                        width: 200,
                        color: Colors.amber,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        print('Inkwell click');
                      },
                      child: Container(
                        child: Center(
                            child: InkWell(
                          onTap: () {
                            print('Text Tapped');
                          },
                          child: Text(
                            'Inkwell',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )),
                        height: 200,
                        width: 200,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),

              // Container( height: 150,
              //   child: ListView(
              //     children: [
              //       Text('Test1',style: TextStyle(fontSize: 20),),
              //       Text('Test2',style: TextStyle(fontSize: 20),),
              //       Text('Test3',style: TextStyle(fontSize: 20),),
              //       Text('Test4',style: TextStyle(fontSize: 20),),
              //       Text('Test5',style: TextStyle(fontSize: 20),),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
