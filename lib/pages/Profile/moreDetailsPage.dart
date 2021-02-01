import 'package:flutter/material.dart';
import 'package:winku/widgets/customWidgets.dart';

class MoreDetailsPage extends StatefulWidget {
  @override
  _MoreDetailsPageState createState() => _MoreDetailsPageState();
}

class _MoreDetailsPageState extends State<MoreDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("More Details"),
      body: Container(
        width: fullWidth(context),
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            basicInfo(),

            Divider(color: Colors.black,),

            contactInfo(),

            Divider(color: Colors.black,),

            locationInfo(),

            Divider(color: Colors.black,),

            relationshipInfo(),

            Divider(color: Colors.black,),

            educationalInfo(),

            Divider(color: Colors.black,),

            workInfo(),


          ],
        ),
      ),
      
    );
  }

  Widget relationshipInfo(){
    return Column(
      children: [
        Text("Relationship Status"),
        infoTile(Icon(Icons.favorite), "Single", ""),
      ],
    );
  }

  Widget locationInfo(){
    return Column(
      children: [
        Text("Location"),
        infoTile(Icon(Icons.home), "Manhattan", "Current City"),
        infoTile(Icon(Icons.location_pin), "New York", "Home Town"),

      ],
    );
  }

  Widget workInfo(){
    return Column(
      children: [
        Text("Work"),
        infoTile(Icon(Icons.work_outline), "Self Employed", "Work"),
      ],
    );
  }

  Widget educationalInfo(){
    return Column(
      children: [
        Text("Education"),
        infoTile(Icon(Icons.school), "UCLA", "College"),
        infoTile(Icon(Icons.location_city_outlined), "Add High School", ""),
      ],
    );
  }

  Widget basicInfo(){
    return Column(
      children: [
        Text("Basic Info"),
        infoTile(Icon(Icons.person), "Male", "Gender"),
        infoTile(Icon(Icons.date_range), "January 21, 2000", "Birthday"),
        infoTile(Icon(Icons.language), "English", "Language"),
      ],
    );
  }

  Widget contactInfo(){
    return Column(
      children: [
        Text("Contact Info"),
        infoTile(Icon(Icons.phone_android), "12345678", "Mobile"),
      ],
    );
  }

  Widget infoTile(Icon leadicon, String title, String subtitle,){
    return ListTile(
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.white,
        child: leadicon,
      ),
      subtitle: Text(subtitle),
      trailing: IconButton(icon: Icon(Icons.edit_outlined), onPressed: null)
    );
  }
}