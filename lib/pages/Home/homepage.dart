import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:winku/pages/Home/newsfeed.dart';
import 'package:winku/pages/Menu/Menu.dart';
import 'package:winku/pages/Messages/messagesPage.dart';
import 'package:winku/pages/Notifications/notificationPage.dart';
import 'package:winku/pages/Search/searchPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

 PageController pageController;

class _HomePageState extends State<HomePage> {
  int _page = 0;

  void navigationTapped(int page){
    //animating
    pageController.jumpToPage(page);
  }

    void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: onPageChanged,
        children: [

          Container(
            child: NewsFeed(),
          ),

          Container(
            child: SearchPage(),
          ),

          Container(
            child: MessagesPage(),
          ),

          Container(
            child: NotificationPage(),
          ),

          Container(
            child: MenuPage(),
          ),

        ],
      ),

      bottomNavigationBar:  Container(
              color: Colors.blue,
              child: CupertinoTabBar( 

            items: [
              
              BottomNavigationBarItem(
                icon: new Icon(Icons.home_outlined, color: (_page == 0) ? Color(0xFF0D47A1) : Colors.grey),
                ),
              
              BottomNavigationBarItem(
                icon: new Icon(Icons.search_outlined, color: (_page == 1) ? Color(0xFF0D47A1) : Colors.grey),
                
                backgroundColor: Colors.white),

              BottomNavigationBarItem(
                icon:  Stack(
                    children: <Widget>[
                      Icon(Icons.chat_bubble_outline , color: (_page == 2) ? Color(0xFF0D47A1) : Colors.grey ),
                      Positioned(
                        right: 2,
                        top: 1,
                        child:  Container(
                          padding: EdgeInsets.all(2),
                          decoration:  BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          constraints: BoxConstraints(
                            minWidth: 14,
                            minHeight: 14,
                          ),
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ) 
                    ],
                  ),
              ),
              
              BottomNavigationBarItem(
                icon: Stack(
                    children: <Widget>[
                      Icon(Icons.notifications_outlined, color: (_page == 3) ? Color(0xFF0D47A1) : Colors.grey ),
                      Positioned(
                        right: 2,
                        top: 1,
                        child:  Container(
                          padding: EdgeInsets.all(2),
                          decoration:  BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          constraints: BoxConstraints(
                            minWidth: 14,
                            minHeight: 14,
                          ),
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ) 
                    ],
                  ),
       
              ),
              
              BottomNavigationBarItem(
                icon: new Icon(Icons.menu_outlined, color: (_page == 4) ? Color(0xFF0D47A1) : Colors.grey),
                
                backgroundColor: Colors.white),
              
            ],

            onTap: navigationTapped,
            currentIndex: _page,
          ),
      ),
    );
  }
}