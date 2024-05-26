import 'package:flutter/material.dart';
import 'package:signandregisterapp/pages/login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
       children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration:  BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffB81736),
                    Color(0xff281537)
                  ]
                )
              ),
              child:  Padding(
                padding:  EdgeInsets.only(top:60.0,left: 20),
                child:  Text("Create \nYour Account",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top:200.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)
                  )
                ),
                width: double.infinity,
                height: double.infinity,
                child:   Padding(
                  padding:  EdgeInsets.only(top:120.0,left: 40,right: 40),
                  child:  Column(
                    children:    [
                       const TextField(decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(top:40.0,left: 25),
                          child: Icon(Icons.check,color: Colors.grey),
                        ),
                        label: Text("Full Name",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:  Color(0xffB81736)
                        ),)
                      ),),
                       const TextField(decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(top:40.0,left: 25),
                          child: Icon(Icons.check,color: Colors.grey),
                        ),
                        label: Text("Gmail",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:  Color(0xffB81736)
                        ),)
                      ),), const TextField(decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(top:40.0,left: 25),
                          child: Icon(Icons.visibility_off,color: Colors.grey),
                        ),
                        label: Text("Password",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:  Color(0xffB81736)
                        ),)
                      ),),
                      const TextField(decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(top:40.0,left: 25),
                              child: Icon(Icons.visibility_off,color: Colors.grey,),
                            ),
                        label: Text("Confirm Password",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:  Color(0xffB81736)
                        ),)
                      ),),
                          Padding(
                            padding: const EdgeInsets.only(top:85.0),
                            child: GestureDetector(
                              onTap: () {
                              },
                              child: Container(
                                height: 50,
                                width: 300,
                                 decoration:  BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                      gradient: const LinearGradient(
                                      colors: [
                                         Color(0xffB81736),
                                         Color(0xff281537)
                                              ]
                                     )
                                   ),
                                child: const Padding(
                                  padding: EdgeInsets.only(top:5.0),
                                  child: Text("SIGN UP",textAlign: TextAlign.center,style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),),
                                )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 80.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Do you have account ?",style: TextStyle(fontSize: 10),),
                                  GestureDetector(onTap:() =>Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginPage())) ,child:Text("Sign In",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),))
                                ],
                              ),
                            ),
                          )
                        
                    ],
                  ),
                ),
              ),
            )
          ],
    ),
    );
    
  }
}