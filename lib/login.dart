import 'package:firebase_project/signup.dart';
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            children: [
        Padding(
        padding: const EdgeInsets.only(top: 30,bottom: 15),
        child: Text('Login',
          style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold
          ),
        ),
            ),
            Text('Login to your account'),
              SizedBox(height: 30,),
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
              SizedBox(height: 30,),
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
              SizedBox(height: 40,),
              TextButton(onPressed:() {},
                child: Container(
                    width: 200,
                    height: 50,
                    alignment: Alignment.center,
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(40),
                        color:Colors.lightBlue
                    ),
                    child: Text('Login',style: TextStyle(color: Colors.white),)),
              ),
              SizedBox(height: 30,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const Signup() ,)
                );
              },
                  child: Text("Don't have an account? Sign up",
                    style:TextStyle(color:
                    Colors.black,
                        fontWeight: FontWeight.bold) ,))
          ],
            ),
      ),
    );
  }
}
