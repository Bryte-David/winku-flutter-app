import 'package:flutter/material.dart';
import 'package:winku/model/chatModel.dart';
import 'package:winku/widgets/customWidgets.dart';
import 'coversationList.dart';


class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {

    List<ChatUsers> chatUsers = [
    ChatUsers(name: "Jane Russel", messageText: "Awesome Setup", image: "assets/staff-1.jpg", time: "Now"),
    ChatUsers(name: "Glady's Murphy", messageText: "That's Great", image: "assets/staff-2.jpg", time: "Yesterday"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", image: "assets/staff-3.jpg", time: "31 Mar"),
    ChatUsers(name: "Philip Fox", messageText: "Busy! Call me in 20 mins", image: "assets/person_1.jpg", time: "28 Mar"),
    ChatUsers(name: "Debra Hawkins", messageText: "Thankyou, It's awesome", image: "assets/person_2.jpg", time: "23 Mar"),
    ChatUsers(name: "Jacob Pena", messageText: "will update you in evening", image: "assets/person_3.jpg", time: "17 Mar"),
    ChatUsers(name: "Andrey Jones", messageText: "Can you please share the file?", image: "assets/person_4.jpg", time: "24 Feb"),
    ChatUsers(name: "John Wick", messageText: "How are you?", image: "assets/image_2.jpg", time: "18 Feb"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Messages"),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Color(0xFF0D47A1),
        child: Icon(Icons.add_circle),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            _searchBar(),

            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].image,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3)?true:false,
                );
              },
            ),
          ],
        ),
      )
    );
  }

  Widget _searchBar(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10,),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search...",
          hintStyle: TextStyle(color: Colors.grey.shade600),
          prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
          filled: true,
          fillColor: Colors.grey.shade100,
          contentPadding: EdgeInsets.all(8),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Colors.grey.shade100
              )
          ),
        ),
      ),
    );
   
  }

}