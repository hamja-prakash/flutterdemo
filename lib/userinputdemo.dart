import 'package:flutter/material.dart';

class userinput extends StatefulWidget {
  const userinput({Key? key}) : super(key: key);

  @override
  State<userinput> createState() => _userinputState();
}

var emailText = TextEditingController();
var passwordText = TextEditingController();

class _userinputState extends State<userinput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Demo'),
      ),
      body: Center(
        child: Container(
         width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailText,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                          BorderSide(color: Colors.deepOrange, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 2)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.grey, width: 2)),
                  prefixIcon: IconButton(
                    icon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: passwordText,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                          BorderSide(color: Colors.deepOrange, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 2)),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye_sharp,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),

                  prefixIcon: IconButton(
                    icon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),

                ),
              ),
              ElevatedButton(
                  child: Text('Login'),
                  onPressed: () {
                    String uName = emailText.text;
                    String uPass = passwordText.text;
                    print("UserName:$uName,Password : $uPass");
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
