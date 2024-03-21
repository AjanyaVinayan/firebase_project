import 'dart:ui';

import 'package:firebase_project/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30,bottom: 15),
                  child: Text('Sign up',
                  style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                 Text('Create an account,Its free'),
                 SizedBox(height: 20,),
                 Container(
                   width: 600,
                     child: Image.asset('assets/123.jpg')
                 ),
                SizedBox(height: 30,),
                Container(alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Username')),
                Container(padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color:  Colors.black))
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Email')),
                Container(padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color:  Colors.black))
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Password')),
                Container(padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color:  Colors.black))
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Confirm Password')),
                Container(padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color:  Colors.black))
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                TextButton(onPressed:() {
            
                },
                      child: Container(
                        width: 200,
                          height: 50,
                          alignment: Alignment.center,
                          decoration:BoxDecoration(borderRadius: BorderRadius.circular(40),
                          color:Colors.lightBlue
                          ),
                          child: Text('Sign Up',style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(height: 30,),
             TextButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(
                 builder: (context) => const Login() ,)
               );
             },
                 child: Text("Don't have an account? Login",
                   style:TextStyle(color:
                   Colors.black,
                   fontWeight: FontWeight.bold) ,))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
