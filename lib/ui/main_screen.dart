import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:bubbled_navigation_bar/bubbled_navigation_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './dates_list.dart';
import 'tasks_icon.dart';

// Màu dùng cho các nút đang dc focus
MaterialColor _focusedIconColor1;
MaterialColor _focusedIconColor2;
MaterialColor _focusedIconColor3;
MaterialColor _focusedIconColor4;
int _lastFocusedIndex = 0; // biến để check xem Icon thứ mấy dc focus trc đó

GlobalKey _bottomMenuKey = GlobalKey();

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//        appBar: AppBar(
//            backgroundColor: Color.fromRGBO(31, 28, 44, 10),
//            title: Center(
//              child: Text(
//                'Your Tasks',
//                textDirection: TextDirection.ltr,
//                textAlign: TextAlign.center,
//                style: GoogleFonts.courgette(
//                  fontWeight: FontWeight.bold,
//                  fontSize: 50,
//                ),
//              ),
//            )),
        body: Container(
          color: Color(0xFFFAF3F0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'Your Tasks',
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.courgette(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Color(0xFF00E676)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: SizedBox(
                  height: 50,
                  child: TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.transparent,
                    unselectedLabelColor: Color(0xFF1B5E20),
                    labelColor: Color(0xFF1B5E20),
                    indicator: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xFF2E7D32), Color(0xFFB9F6CA)]),
//                    color: Color(0xFFB9F6CA),
//                    borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
                  borderRadius: BorderRadius.circular(50)
                  ),
                  tabs: <Widget>[
                    Tab(
                      child: Icon(
                        Icons.today,
                        size: 30,
                      ),
                    ),
                    Tab(
                        child: Icon(
                          Icons.event,
                          size: 30,
                        )
                    ),
                    Tab(
                        child: Icon(
                          Icons.assistant_photo,
                          size: 30,
                        )
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  DatesListScreen(),
                  DatesListScreen(),
                  DatesListScreen(),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: Container(
        width: 55.0,
        height: 55.0,
        child: FloatingActionButton(
          elevation: 2.0,
          tooltip: 'Add new task',
          child: Icon(Icons.add),
          onPressed: () {
            print('Tapped');
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BubbledNavigationBar(
        animationDuration: Duration(milliseconds: 500),
        defaultBubbleColor: Colors.blue,
        backgroundColor: Color(0xFFFAF3F0),
        initialIndex: 0,
        onTap: (index) {
          // handle tap
        },
        items: <BubbledNavigationBarItem>[
          BubbledNavigationBarItem(
            icon:       Icon(CupertinoIcons.tags, size: 30, color: Colors.red),
            activeIcon: Icon(CupertinoIcons.tags, size: 30, color: Colors.white),
            title: Text('Tasks', style: TextStyle(color: Colors.white, fontSize: 15),),
          ),
          BubbledNavigationBarItem(
            icon:       Icon(CupertinoIcons.check_mark_circled_solid, size: 30, color: Colors.purple),
            activeIcon: Icon(CupertinoIcons.check_mark_circled_solid, size: 30, color: Colors.white),
            title: Text('Goals', style: TextStyle(color: Colors.white, fontSize: 15),),
          ),
          BubbledNavigationBarItem(
            icon:       Icon(CupertinoIcons.profile_circled, size: 30, color: Colors.teal),
            activeIcon: Icon(CupertinoIcons.profile_circled, size: 30, color: Colors.white),
            title: Text('Profile', style: TextStyle(color: Colors.white, fontSize: 15),),
          ),
          BubbledNavigationBarItem(
            icon:       Icon(CupertinoIcons.settings, size: 30, color: Colors.cyan),
            activeIcon: Icon(CupertinoIcons.settings, size: 30, color: Colors.white),
            title: Text('Settings', style: TextStyle(color: Colors.white, fontSize: 15),),
          ),
        ],
      ),
    );
  }

  void _changePage(int value) {
    setState(() {
      _lastFocusedIndex = value;
    });
  }
}

/*
CurvedNavigationBar(
        height: 60,
        animationDuration: Duration(milliseconds: 500),
        backgroundColor: Color.fromRGBO(46, 35, 49, 10),
        key: _bottomMenuKey,
        items: <Widget>[
          Icon(
            Icons.list,
            size: 40,
          ),
          Icon(
            Icons.check,
            size: 40,
          ),
          Icon(
            Icons.person,
            size: 40,
          ),
          Icon(
            Icons.settings,
            size: 40,
          )
        ],
        onTap: (index) {},
      ),
* */
