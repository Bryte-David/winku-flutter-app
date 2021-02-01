import 'package:flutter/material.dart';
import 'package:winku/widgets/customWidgets.dart';


class WriteNewPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF0D47A1),
        title: customTitleText("Write new..."),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: fullWidth(context),
        height: fullHeight(context),
        child: ListView(
          children: [

                Container(
                  child: TextField(
                    maxLines: 6,
                    maxLength: 500,
                    decoration: InputDecoration(
                      hintText: "Type..."
                    ),
                  ),
                ),

                others(Icon(Icons.photo_sharp, color: Colors.deepOrange,), "Photos"),
                
                others(Icon(Icons.video_library_outlined, color: Colors.purpleAccent,), "Videos"),
                others(Icon(Icons.record_voice_over_outlined, color: Colors.pinkAccent,), "Voice Notes"),

                others(Icon(Icons.people, color: Colors.teal,), "Tag Friends"),



                

              
            
          ],
        ),
      ),

      bottomNavigationBar: InkWell(
        onTap: null,
          child: Container(
            height: 45,
            width: fullWidth(context),
            color: Color(0xFF0D47A1),
            child: Center(
              child: Text("Publish", 
              style: TextStyle(color: Colors.white, fontSize: 18), textAlign: TextAlign.center,)
            ),
          ),
      ),
    );
  }

  Widget others(Icon icon, String title, {tap}){
     return InkWell(
      onTap: null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            icon,
            SizedBox(width: 8),
            Text(title, style: TextStyle(
              fontSize: 15
            ),),
          ],
        ),
      ),
    );
  }

}