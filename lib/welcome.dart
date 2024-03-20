import 'package:firebase_project/login.dart';
import 'package:firebase_project/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
        child: Container(
        child: Column(
        children: [
        Padding(
        padding: const EdgeInsets.only(top: 30),
    child: Text('Welcome',
    style: TextStyle(fontSize: 45,
    fontWeight: FontWeight.bold
    ),
    ),
    ),
    Text('Do Subscribe'),
          SizedBox(height: 35,),
          Container(
            width: 500,
            child: Center(
              child:Column(
                children: [
               Image.asset('assets/images/wlcm.jpg'),
                ],
              ),
            ),
          ),
           // SizedBox(height: 200,),
           TextButton(onPressed:() {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => const Login() ,)
            );
          },
            child: Container(
                width: 400,
                height: 40,
                alignment: Alignment.center,
                decoration:BoxDecoration(borderRadius: BorderRadius.circular(40),
                    color:Colors.white,
                  border: Border.all(color: Colors.black)
                ),
                child: Text('Login',
                  style: TextStyle(color: Colors.black,
                      fontWeight:FontWeight.bold ),)
            ),
          ),
           SizedBox(height: 15,),
          TextButton(onPressed:() {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => const Signup() ,)
            );
          },
            child: Container(
                width: 400,
                height: 40,
                alignment: Alignment.center,
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color:Colors.lightBlue
                ),
                child: Text('Sign Up',
                  style: TextStyle(color: Colors.white),)
            ),
          ),
          ],
        ),
    ),
        ),
    );
  }
}
