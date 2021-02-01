import 'package:flutter/material.dart';
import 'package:winku/pages/Profile/editProfilePage.dart';
import 'package:winku/pages/Profile/moreDetailsPage.dart';
import 'package:winku/widgets/customWidgets.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: customAppBar("Nathan Joe"),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              _buildCoverImage(screenSize),
              SafeArea(
                child: Column(
                    children: [
                      SizedBox(height: screenSize.height / 6.4),
                      _buildProfileImage(),
                      _buildFullName("Nathan Joe"),
                      _buildStatus(context, "I am an Entreprenuer, into Real Estate Investment and Cryto Mining"),
                      _buildStatContainer(),
                      _buildBio(),

                      SizedBox(height: 5),

                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditProfilePage()));
                        },
                        child: Container(
                          height: 35,
                          width: 190,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(9)
                          ),
                          child: Center(
                            child: Text("Edit Your Profile")
                          )
                        ),
                      ),

                      SizedBox(height: 5),

                      Divider(height: 5, thickness: 2 ),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Photos", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                                ) ),

                                SizedBox(width: 7),

                                Text("16", style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17
                                ))
                              ],
                            ),

                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios_outlined, size: 18,), 
                              onPressed: null)
                          ],
                        ),
                      ),

                      _buildPhotoContainer(),

                      SizedBox(height: 10,),

                      _postCard(
                        "assets/person_4.jpg", 
                        "Nathan Joe", 
                        "2nd Jan 2021, 2:34am", 
                        "Hello Everyone i bought that shoe from amazon, it was delivered today", 
                        "assets/gallery-2.jpg", 
                        400, 
                        243),

                    ],
                  ),
              )
            ],
          ),

          

        ],
      )
    );
  }

  Widget _buildCoverImage(Size screenSize){
    return Container(
      height: screenSize.height / 3.3,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/gallery-1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProfileImage(){
    return Center(
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
    );
  }

  Widget _buildFullName(String fullname) {
    return Text(
      fullname,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: Colors.black,
        fontSize: 28.0,
        fontWeight: FontWeight.w700,
      ),
    );
  }

   Widget _buildStatus(BuildContext context, status) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.8),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(
        status,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Spectral',
          color: Colors.black,
          fontSize: 15.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

    Widget _buildStatItem(String label, String count) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Text(
          count,
          style: TextStyle(
              color: Colors.black54,
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
        ),

        Text(
          label,
          style: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.black,
            fontSize: 15.0,
            fontWeight: FontWeight.w300,
          ),
        ),

        
      ],
    );
  }

  Widget _buildStatContainer() {
    return Card(
      color: Colors.grey.shade100,
      child: Container(
        height: 60.0,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildStatItem("Friends", "30"),
            _buildStatItem("Posts", "26"),
            _buildStatItem("Likes", "30"),
          ],
        ),
      ),
    );
  }

  Widget _buildBioItem(IconData icon, String label){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon, size: 20, color: Colors.grey,),
        SizedBox(width: 9),
        Text(label, style: TextStyle(
          fontSize: 16,
          color: Colors.grey
        ),)


      ],
    );
  }

  Widget _buildBio(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildBioItem(Icons.location_pin, "Lives in New York"),
            SizedBox(height: 5),
            _buildBioItem(Icons.home, "From Manhattan"),
            SizedBox(height: 5),
            _buildBioItem(Icons.school, "Went to UCLA"),

            SizedBox(height: 10),

            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MoreDetailsPage()));
              },
              child: Container(
                height: 20,
                alignment: Alignment.center,
                child: Text("See More Details", style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue
                ),),
              ),
            ),
          ],
      ),
    );
  }

  Widget _buildPhotoContainer(){
    return Container(
      height: 100,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 1 ,
        children: List.generate(10,(index){
          return Container(
            child: Image.asset('assets/staff-1.jpg'),
            
          );

        }),
      ),
    );
  }

  Widget _postCard(String profileImg, String name, String dateTime, String caption, String imgUpload, int likes, int comments){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 5, 0),
            child: Column(
            children: [
              // image and name section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween , 
                    children: [
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                profileImg, ),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      
                      SizedBox(width: 4,),
                      //name and date
                      Column(

                        children: [
                          Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                          Text(dateTime, style: TextStyle(color: Colors.grey, fontSize: 13),),
                        ],
                      ),
                    ],
                  ),
                  

                  Container(
                    child: IconButton(icon: Icon(Icons.more_vert), onPressed: null),
                  )
                ],
              ),

              SizedBox(height: 15,),

              Container(
                child: Text(caption),
              ),

              SizedBox(height: 15,),

              Container(
                child: Image.asset(
                  imgUpload,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),


              // SizedBox(height: 20),
              
              Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(24)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(icon: Icon(Icons.favorite_border_outlined, size: 20, color: Color(0xFF0D47A1),), onPressed: null),
                          Text("$likes", style: TextStyle(fontSize: 13),)
                        ],
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(icon: Icon(Icons.comment_bank_outlined, size: 20, color: Color(0xFF0D47A1),), onPressed: null),
                        
                        Text("$comments ", style: TextStyle(fontSize: 13),)
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(icon: Icon(Icons.arrow_forward_ios_outlined, size: 20, color: Color(0xFF0D47A1),), onPressed: null),
                        // Text("$comments ", style: TextStyle(fontSize: 15),)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      
    );
  }

}