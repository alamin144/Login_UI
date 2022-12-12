import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_ui/navigator/bottom_navi.dart';
import 'package:login_ui/navigator/order.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color.fromARGB(102, 224, 32, 32),
                Color.fromARGB(102, 9, 231, 39),
                Color.fromRGBO(38, 38, 38, 0.4)
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                height: 80,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(width: 8, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 214, 63, 63)),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 3, 3, 3),
                        ),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      labelText: 'E-Mail',
                      labelStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      hintText: 'Enter E-mail',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 206, 85, 85)),
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color.fromARGB(102, 23, 8, 245),
                      )),
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                height: 40,
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 226, 11, 11)),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 3, 3, 3),
                        ),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      labelText: 'password',
                      labelStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      hintText: 'Enter Password',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 206, 85, 85)),
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(102, 23, 8, 245),
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Bar()),
                        );
                      },
                      child: Text("Sign In")))
            ],
          ),
        )
      ],
    ));
  }
}
