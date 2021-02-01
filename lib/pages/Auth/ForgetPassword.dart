import 'package:flutter/material.dart';
import 'package:winku/pages/Home/homepage.dart';
import 'package:winku/widgets/customWidgets.dart';

import 'SignInPage.dart';
import 'SignUpPage.dart';

class ForgetPasswordPage extends StatefulWidget {
  @override
  _ForgetPasswordPageState createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  TextEditingController _email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: fullWidth(context),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/logo.png", width: 100, height: 100,),
                ],
              ),

              SizedBox(
                height: 10,
              ),

              Container(
              child: Column(
                children: <Widget>[
                  Text('Forget Password',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(height: 15),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Enter your email address below to receive instructions on how to reset your password',
                  style:TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black54),textAlign: TextAlign.center),

                  )
                ],
              )
            ),

              SizedBox(
                height: 30,
              ),

              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      controller: null,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                          icon: Icon(Icons.email)
                      ),
                    ),),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xFF0D47A1),
                        // border: Border.all(color: Colors.red,),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Submit", style: TextStyle(color: Colors.white) ),
                        ],
                      ),),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignInPage()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Sign In ", style: TextStyle(fontSize: 15, color: Colors.blue, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpPage()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Sign Up", style: TextStyle(fontSize: 15, color: Colors.blue, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ],
              )




            ],
          ),
        ),
      )
    );
  }

  Widget _label(){
    return Container(
      child:Column(
        children: <Widget>[
          Text('Forget Password',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Enter your email address below to receive instructions on how to reset your password',
          style:TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black54),textAlign: TextAlign.center),

          )
        ],
      )
    );
  }

   Widget _inputField(String hint,{TextEditingController controller,bool isPassword = false}){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(30)
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.normal),
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.blue)),
          contentPadding:EdgeInsets.symmetric(vertical: 15,horizontal: 10)
        ),
      ),
    );
  }

 Widget _submitButton(BuildContext context){
    return InkWell(
      onTap: null,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        height: 35,
        width: 150,
        child: Center(
          child: Text("Submit", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),)
        )
      ),
    );
  }

   Widget _body(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
            child: Image.asset("assets/logo.png"),
            ),

            SizedBox(height: 35,),

            _label(),
            
            SizedBox(height: 35,),
            _inputField('Enter Email Address', controller: _email),
            // SizedBox(height: 10,),
            _submitButton(context),
        ],)
    );
  }
  
}