import 'package:flutter/material.dart';
import 'package:winku/widgets/customWidgets.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Edit Profile"),
      body: Container(
        width: fullWidth(context),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            profilePhoto(),

            Divider(color: Colors.black,),

            coverPhoto(),

            Divider(color: Colors.black,),

            bio(),

            customButton("Save", null),

          ],
        ),
      ),
    );
  }

  Widget bio(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text("Bio",)
          ),

          Container(
            child: TextField(
              maxLines: 6,
              decoration: InputDecoration(
                hintText: "I am an Entreprenuer, into Real Estate Investment and Cryto Mining",
              ),
            ),
          ),
        ],
      ),
    );

  }

  Widget coverPhoto(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Cover Photo"),
              
              InkWell(
                onTap: null,
                child: Text("Edit", style: TextStyle(color: Color(0xFF0D47A1)),),
              )
            ],
          ),

          SizedBox(height: 10,),

          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/gallery-1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget profilePhoto(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text("Profile Photo"),
              
              InkWell(
                onTap: null,
                child: Text("Edit", style: TextStyle(color: Color(0xFF0D47A1)),),
              )
            ],
          ),

          Center(
            child: Container(
              width: 140.0,
              height: 140.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/person_4.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(80.0),
                border: Border.all(
                  color: Colors.white,
                  width: 10.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}