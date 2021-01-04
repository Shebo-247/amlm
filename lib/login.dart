import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String code = "+966";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "AMLM",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                "APP",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Welcome".toUpperCase(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width * .4,
                color: Colors.white,
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Enter your phone number to sign in or Create account to continue !",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: DropdownButton<String>(
                          value: code,
                          items: [
                            DropdownMenuItem(
                                child: Text("+966"), value: "+966"),
                            DropdownMenuItem(child: Text("+20"), value: "+20"),
                            DropdownMenuItem(
                                child: Text("+555"), value: "+555"),
                          ],
                          onChanged: (value) {
                            setState(() {
                              code = value;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextField(
                          style: TextStyle(
                            decoration: TextDecoration.none,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: Icon(Icons.phone_iphone),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
