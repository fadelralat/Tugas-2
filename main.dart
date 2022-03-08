import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String username = "";
  String password = "";
  bool isLoginSuccess = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Screen"),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 150),
              FlutterLogo(),
              SizedBox(height: 80),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
                child: TextFormField(
                  enabled: true,
                  onChanged: (value) {
                    username = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: 'Email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 15.0),
                child: TextFormField(
                  obscureText: true,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: 'Password',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 15.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(40.0),
                  ),
                  onPressed: () {
                    String text = "";
                    if (username == "flutterMobile" &&
                        password == "flutter123") {
                      setState(() {
                        text = "Login Success";
                        isLoginSuccess = true;
                      });
                    } else {
                      setState(() {
                        text = "Login Failed";
                        isLoginSuccess = false;
                      });
                    }
                    print("isLoginSuccess : $isLoginSuccess");
                    SnackBar snackBar = SnackBar(
                      content: Text(text),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text('Login'),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
                child: Text("Forgot password?"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
