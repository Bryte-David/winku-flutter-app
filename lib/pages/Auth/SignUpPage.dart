import 'package:flutter/material.dart';
import 'package:winku/pages/Home/homepage.dart';
import 'package:winku/widgets/customWidgets.dart';

import 'SignInPage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController email = TextEditingController();
  TextEditingController fullname = TextEditingController();
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
                height: 25,
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
                      controller: null,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Full Name",
                          icon: Icon(Icons.person)
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
                          Text("Sign Up", style: TextStyle(color: Colors.white) ),
                        ],
                      ),),
                  ),
                ),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignInPage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("Already have an account ?"),
                    Text("Sign In", style: TextStyle(fontSize: 15, color: Colors.blue, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }

  // Widget _body(BuildContext context){
  //   return Container(
  //     padding: EdgeInsets.symmetric(horizontal: 20),
  //     width: MediaQuery.of(context).size.width,
  //     height: MediaQuery.of(context).size.height,
  //     child: ListView(
  //       children: [

  //         Container(
  //           child: Image.asset("assets/logo.png"),
  //         ),
  //         SizedBox(height: 20),

  //         _inputField(Icon(Icons.person), "Fullname", controller: fullname),
          
  //         SizedBox(height: 15),
          
  //         _inputField(Icon(Icons.alternate_email), "Email Address", controller: email, isEmail: true),
          
  //         SizedBox(height: 15),

  //         _inputField(Icon(Icons.lock), "Password", controller: password, isPassword: true, suffixicon: 
  //             IconButton(icon: Icon(Icons.remove_red_eye), onPressed: null)),

  //         SizedBox(height: 15),

  //         _submitButton(context),

  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [

  //              _labelButton("Log In", onPressed: () => {Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignInPage()))}),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }

  // Widget _labelButton(String title, {Function onPressed}) {
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
  //       padding: EdgeInsets.symmetric(horizontal: 15),
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(10),
  //         color: Colors.blue,
  //       ),
  //       height: 35,
  //       width: 150,
  //       child: Center(
  //         child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),)
  //       )
  //     ),
  //   );
  // }


}