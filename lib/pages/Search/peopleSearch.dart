import 'package:flutter/material.dart';
import 'package:winku/model/usersModel.dart';
import 'package:winku/widgets/customWidgets.dart';

class PeopleSearch extends StatefulWidget {
  @override
  _PeopleSearchState createState() => _PeopleSearchState();
}

class _PeopleSearchState extends State<PeopleSearch> {
  List<UserModel> users = [
    UserModel(name: "Ray Bob", profilePic: "assets/staff-1.jpg"),
    UserModel(name: "Jay Jay", profilePic: "assets/staff-2.jpg"),
    UserModel(name: "Barr Donald", profilePic: "assets/staff-3.jpg"),
    UserModel(name: "Ray Bob", profilePic: "assets/staff-1.jpg"),
    UserModel(name: "Jay Jay", profilePic: "assets/staff-2.jpg"),
    UserModel(name: "Barr Donald", profilePic: "assets/staff-3.jpg"),
    UserModel(name: "Ray Bob", profilePic: "assets/staff-1.jpg"),
    UserModel(name: "Jay Jay", profilePic: "assets/staff-2.jpg"),
    UserModel(name: "Barr Donald", profilePic: "assets/staff-3.jpg"),
    UserModel(name: "Ray Bob", profilePic: "assets/staff-1.jpg"),
    UserModel(name: "Jay Jay", profilePic: "assets/staff-2.jpg"),
    UserModel(name: "Barr Donald", profilePic: "assets/staff-3.jpg"),
    UserModel(name: "Ray Bob", profilePic: "assets/staff-1.jpg"),
    UserModel(name: "Jay Jay", profilePic: "assets/staff-2.jpg"),
    UserModel(name: "Barr Donald", profilePic: "assets/staff-3.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
        width: fullWidth(context),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: users.length,
          itemBuilder: ((BuildContext context, index){
            return GestureDetector(
              onTap: null,
              child: Container(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage(users[index].profilePic),
                            maxRadius: 25,
                          ),
                          SizedBox(width: 16,),
                          Expanded(
                            child: Container(
                              color: Colors.transparent, 
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(users[index].name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                  SizedBox(height: 6,),
                                  Text("New York, USA",style: TextStyle(fontSize: 13,color: Colors.grey.shade600, fontWeight: FontWeight.normal),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                     RawMaterialButton(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10),
                       ),
                       onPressed: null,
                       fillColor: Color(0xFF0D47A1),
                       child: Text("Add Friend", style: TextStyle(
                         color: Colors.white
                       ),),
                     ),
                  ],
                ),
              ),
            );
          }),
        )
      )
    );
  }
}