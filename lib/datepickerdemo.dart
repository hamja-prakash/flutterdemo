import 'package:flutter/material.dart';
import 'package:flutterdemo/statelessandstatefull.dart';

class datepickerdemo extends StatelessWidget {
  const datepickerdemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Date Picker Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: DatePickerDemo(),
    );
  }
}

class DatePickerDemo extends stateless {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Picker Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Select Date', style: TextStyle(fontSize: 18),),

            ElevatedButton(onPressed: ()async
            {
              DateTime? datePicked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2025));

              if(datePicked != null)
              {
                print('Selected Date : ${datePicked.day}');
              }
            }, child: const Text('Show date')),

            ElevatedButton(onPressed: ()async
            {
              TimeOfDay? timePicked =  await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
              initialEntryMode: TimePickerEntryMode.input
              );
              if(timePicked != null)
              {
                print('Selected time : ${timePicked.hour}');
              }
            }, child: const Text('Show time')),
          ],
        ),
      ),
    );
  }
}
