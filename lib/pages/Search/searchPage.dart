import 'package:flutter/material.dart';
import 'package:winku/widgets/customWidgets.dart';

import 'peopleSearch.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Make Searches"),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(
                indicatorWeight: 8,
                indicatorColor: Color(0xFF0D47A1),
                indicatorSize: TabBarIndicatorSize.tab,
                isScrollable: true,
                tabs: _tabScroll()),
            ),
            Expanded(
              child: Container(
                child: TabBarView(children: [
                  Container(
                    child: PeopleSearch(),
                  ),
                  Container(
                    child: Text("Group Body"),
                  ),
                  Container(
                    child: Text("Pages Body"),
                  ),
                  Container(
                    child: Text("Job Body"),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),

    );
  }

  List<Widget> _tabScroll() => [
        Tab(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(width: 50),
            child: Text("People", style: TextStyle(
                 color: Colors.black, fontSize: 12),),
          ),
        ),
        Tab(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(width: 50),
            child: Text("Groups", style: TextStyle(
                 color: Colors.black, fontSize: 12),),
          ),
        ),
        Tab(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(width: 50),
            child: Text("Pages", style: TextStyle(
                color: Colors.black, fontSize: 12),),
          ),
        ),
        Tab(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(width: 50),
            child: Text("Jobs", style: TextStyle(
                 color: Colors.black, fontSize: 12),),
          ),
        ),
      ];
}