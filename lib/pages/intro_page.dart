import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:signandregisterapp/pages/login_page.dart';
import 'package:signandregisterapp/pages/register_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[
                 Color(0xffB81736),
                 Color(0xff281537)
              ]
              )
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:128.0),
                child: Image.asset("assets/images/fitnesslogo.png",width: MediaQuery.of(context).size.width/2,color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.only(top:100.0),
                child: Text("Welcome Back",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: GestureDetector(
                  onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage(),));
                  },
                  child: Container(
                    height: 53,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white)
                    ),
                    child: Center(child: Text(textAlign: TextAlign.center,"SIGN IN",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
                  },
                  child: Container(
                    height: 53,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white)
                    ),
                    child: Center(child: Text(textAlign: TextAlign.center,"SIGN UP",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),)),
                  ),
                ),
              ),
              Spacer(),
              Text("Login with Social Media",style: TextStyle(color: Colors.white,fontSize: 16),),
              Image.asset("assets/images/social.png",width: MediaQuery.of(context).size.width/3.3,color: Colors.white,height: MediaQuery.of(context).size.height/11,)
            ],
          ),
        ),
    );
  }
}