import 'package:flutter/material.dart';

import 'writeNewPost.dart';

class NewsFeed extends StatefulWidget {
  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {

  Widget appBarTitle = Image.asset("assets/logo.png", height: 100, width: 70,);
  Icon actionIcon  = Icon(Icons.search, color: Color(0xFF0D47A1),);

  Widget searchField =  TextField(
      decoration: InputDecoration(
        hintText: "Search Winku...",
        prefixIcon: Icon(Icons.search),
      ),
    );
  

  void searchBtn(){
    setState(() {
      if(this.actionIcon.icon == Icons.search){
        
        this.actionIcon = Icon(Icons.close, color: Color(0xFF0D47A1),);

        this.appBarTitle = searchField;
      }else{
        this.actionIcon = Icon(Icons.search, color: Color(0xFF0D47A1),);
        this.appBarTitle = Image.asset("assets/logo.png", height: 100, width: 70,);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: actionIcon, onPressed: searchBtn)
        ],
        toolbarHeight: 60.0,
        backgroundColor: Color(0xFFE8EAF6),
        elevation: 0.0,
        title: appBarTitle,
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          child: Container(
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

        )
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          
          _writeNew(),

          _postCard(
            "assets/person_1.jpg", 
            "Mark Jacobs", 
            "2nd Jan 2021, 2:34am", 
            "Hello Everyone i bought that shoe from amazon, it was delivered today", 
            "assets/gallery-2.jpg", 
            400, 
            243),

            _postCard(
            "assets/person_2.jpg", 
            "Stephen Barns", 
            "5th Jan 2021, 4:54am", 
            "Working today for a better tommorrow", 
            "assets/about.jpg", 
            44, 
            33),

            _postCard(
            "assets/person_3.jpg", 
            "Roland Murphy", 
            "5th Jan 2021, 4:54am", 
            "Damn, i am getting old, my daughter bought me teenager's sneakers", 
            "assets/gallery-3.jpg", 
            33, 
            12),



          
        ],
      )
    );
  }

  Widget _writeNew(){
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => WriteNewPost())),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
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

            
            Container(
              height: 40,
              width: 190,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(9)
              ),
              child: Center(
                child: Text("Write Something...")
              )
            ),

            Container(
              child: IconButton(icon: Icon(Icons.picture_in_picture), onPressed: null),
            )



            
          ],
        ),
      ),
    );
  }

  Widget _postCard(String profileImg, String name, String dateTime, String caption, String imgUpload, int likes, int comments){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Card(
        color: Colors.grey.shade100,
        elevation: 2.0,
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
                      
                      SizedBox(width: 8,),
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
                          IconButton(icon: Icon(Icons.favorite_border, size: 20, color: Color(0xFF0D47A1),), onPressed: null),
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
      ),
    );
  }
}