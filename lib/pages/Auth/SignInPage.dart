import 'package:flutter/material.dart';
import 'package:winku/pages/Home/homepage.dart';
import 'package:winku/widgets/customWidgets.dart';

import 'ForgetPassword.dart';
import 'SignUpPage.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
 TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: fullWidth(context),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 80,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/logo.png", width: 100, height: 100,),
                ],
              ),

              SizedBox(
                height: 20,
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
                      controller: email,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                          icon: Icon(Icons.email)
                      ),
                    ),),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      obscureText: true,
                      controller: password,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          icon: Icon(Icons.lock)
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
                          Text("Sign In", style: TextStyle(color: Colors.white) ),
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgetPasswordPage()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Forgot Password ?", style: TextStyle(fontSize: 15, color: Colors.blue, fontWeight: FontWeight.bold),),
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
              ),
              SizedBox(height: 20),

              Divider(color: Colors.grey),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: null,
                    child: Container(
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          "assets/google.jpg"
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: null,
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          "assets/facebook.png"
                        ),
                      ),
                    ),
                  )
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }

  // Widget _body(BuildContext context){
  //   return Container(
  //     padding: const EdgeInsets.only(top: 120),
  //     child: ListView(
  //       children: [
  //         Container(
  //           child: Image.asset("assets/logo.png", height: 30,),
  //         ),

  //         SizedBox(height: 50),

  //         _inputField(Icon(Icons.alternate_email), "Email Address", controller: email, isEmail: true),

  //         SizedBox(height: 15),

  //         _inputField(Icon(Icons.lock), "password", controller: password, isPassword: true, suffixicon: 
  //             IconButton(icon: Icon(Icons.remove_red_eye), onPressed: null)),
          
  //         SizedBox(height: 15),

  //         _submitButton(context),

  //         //  SizedBox(height: 10),

  //          _labelButton("Forgot Password ?", onPressed: () => {Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgetPasswordPage()))}),
          
  //         _labelButton("Create Account", onPressed: () => {Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpPage()))}),
  //       ],
  //     ),
  //   );
  // }

  

  //  Widget _labelButton(String title, {Function onPressed}) {
  //   return FlatButton(
  //     onPressed: onPressed,
  //     splashColor: Colors.grey.shade200,
  //     child: Text(
  //       title,
  //       style: TextStyle(
  //           color: Colors.blue, fontWeight: FontWeight.bold),
  //     ),
  //   );
  // }

  // _inputField(icon, String hint, {TextEditingController controller, isEmail = false, isPassword = false, suffixicon }){
  //   return Container(
  //     // decoration: BoxDecoration(
  //     //   borderRadius: BorderRadius.circular(40),
  //     //   color: Colors.grey.shade200,
  //     // ),
  //     child: TextFormField(
  //       controller: controller,
  //       obscureText: isPassword,
  //       keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
  //       style: TextStyle(
  //         fontStyle: FontStyle.normal,
  //         fontWeight: FontWeight.normal,
  //       ),
  //       decoration: InputDecoration(
  //         suffixIcon: suffixicon,
  //         prefixIcon: icon,
  //         hintText: hint,
  //         border: InputBorder.none
  //       ),
  //     ),
  //   );
  // }

  // _submitButton(BuildContext context){
  //   return InkWell(
  //     onTap: (){
  //       Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
  //     },
  //     child: Container(
  //       margin: EdgeInsets.symmetric(vertical: 15),
  //       width: 150,
  //       height: 35,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(10),
  //         color: Colors.blue,
  //       ),
  //       child: Center(
  //         child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold))
  //       ),
  //     ),
  //   );
  // }


}