import 'package:flutter/material.dart';


Widget customButton(onpress, String text){
  return RawMaterialButton(
          onPressed: onpress,
          fillColor: Color(0xFF0D47A1),
          child: Text(text, style: TextStyle(
            color: Colors.white
          ),),
        );
}

Widget customAppBar(String title){
  return AppBar(
        backgroundColor: Color(0xFF0D47A1),
        elevation: 0.0,
        toolbarHeight: 45,
        centerTitle: true,
        title: Text(title, 
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18
        )),
      );
}


Widget customTitleText(String title, {BuildContext context}){
  return Text(title, 
  style: TextStyle(
    fontSize: 20,
    color: Colors.white,
  ),);
}

double fullWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double fullHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}