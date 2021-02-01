import 'package:flutter/material.dart';
import 'package:winku/widgets/customWidgets.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Notifications"),
      body: Container(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              Card(
                color: Colors.grey.shade100,
                child: Container(
                  constraints: BoxConstraints.expand(height: 50),
                  child: TabBar(
                    indicatorWeight: 8,
                    indicatorColor: Color(0xFF0D47A1),
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(
                        child: Container(
                          child: Text("All", style: TextStyle(
                            color: Colors.black, fontSize: 12),),
                        )
                      ),
                      Tab(
                        child: Container(
                          child: Text("Likes", style: TextStyle(
                            color: Colors.black, fontSize: 12),),
                        )
                      ),

                      Tab(
                        child: Container(
                          child: Text("Comments", style: TextStyle(
                            color: Colors.black, fontSize: 12),),
                        )
                      ),

                      
                    ]
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(children: [
                    Container(
                      child: Text("All Body"),
                    ),
                    Container(
                      child: Text("Likes Body"),
                    ),
                    Container(
                      child: Text("Comments Body"),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}