import 'package:flutter/material.dart';
import 'package:winku/pages/Profile/userProfile.dart';
import 'package:winku/widgets/customWidgets.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Menu"),
      body: Container(
        width: fullWidth(context),
          child: ListView(
            physics: BouncingScrollPhysics(),
          children: [
            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserProfilePage()));
              },
              tileColor: Colors.grey.shade100,
              title: Text("Nathan Joe"),
              subtitle: Text("View My Profile", style: TextStyle(fontSize: 13),),
              leading: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/person_4.jpg', ),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ), 

            
            Divider(height: 10, thickness: 8.4,),

            ListTile(
              onTap: null,
              leading: Icon(Icons.emoji_people_outlined, color: Colors.teal,),
              title: Text("Friend Requests", style: TextStyle(fontSize: 16), ),
              trailing: Container(
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                        child: Text("3", style: TextStyle(color: Colors.white),),
                      ),
                    )
            ),

            ListTile(
              onTap: null,
              leading: Icon(Icons.group, color: Colors.amber,),
              title: Text("Groups", style: TextStyle(fontSize: 16), ),
            ),

            ListTile(
              onTap: null,
              leading: Icon(Icons.pages_outlined, color: Colors.blueGrey,),
              title: Text("Pages", style: TextStyle(fontSize: 16), ),
            ),

            ListTile(
              onTap: null,
              leading: Icon(Icons.shopping_cart, color: Colors.orange,),
              title: Text("Market Zone", style: TextStyle(fontSize: 16), ),
            ),

            ListTile(
              onTap: null,
              leading: Icon(Icons.pages, color: Colors.purple,),
              title: Text("Saved Posts", style: TextStyle(fontSize: 16), ),
            ),

            ListTile(
              onTap: null,
              leading: Icon(Icons.settings, color: Colors.cyan,),
              title: Text("Settings", style: TextStyle(fontSize: 16), ),
            ),

            ListTile(
              onTap: null,
              leading: Icon(Icons.privacy_tip_outlined, color: Colors.teal,),
              title: Text("Privacy & Policy", style: TextStyle(fontSize: 16), ),
            ),

            ListTile(
              onTap: null,
              leading: Icon(Icons.info, color: Colors.indigo,),
              title: Text("About", style: TextStyle(fontSize: 16), ),
            ),

            ListTile(
              onTap: null,
              leading: Icon(Icons.send_to_mobile, color: Colors.lime,),
              title: Text("Contact Developer", style: TextStyle(fontSize: 16), ),
            ),

            ListTile(
              onTap: null,
              leading: Icon(Icons.logout, color: Colors.grey,),
              title: Text("Log Out", style: TextStyle(fontSize: 16), ),
            ),


          ],
        ),
      )
    );
  }
}