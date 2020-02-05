import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:instagram/screen/AddPhoto.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'screen/HomeScreen.dart';
import 'screen/Search.dart';
import 'screen/Nofity.dart';
import 'screen/Person.dart';
import 'screen/AddPhoto.dart';
import './model/stories.dart';
class HomePage extends StatefulWidget {
  List<CameraDescription> cameras;
  HomePage(this.cameras);
  @override
  _HomePageState createState() => _HomePageState(cameras);
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  List<CameraDescription> cameras;
  _HomePageState(this.cameras);
  TabController _tabController;
  bool tabBarVisible=true;
  @override
  void initState(){
    super.initState();
    _tabController = TabController(initialIndex: 0,length: 5,vsync: this);
    _tabController.addListener(_handleTabSelection);
  }
  void _handleTabSelection() {
    setState(() {
      });
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          HomeScreen(),
          Search(),
          AddPhoto(cameras),
          Notify(),
          Person()
        ],
      ),
      bottomNavigationBar: tabBarVisible?BottomAppBar(
        child: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home,size: 40.0,),
            ),
            Tab(
              icon: _tabController.index==1?Icon(MdiIcons.searchWeb,size: 40.0,)
                    :Icon(Icons.search,size: 40.0,),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: Tab(
                icon: IconButton(
                  icon: Icon(Icons.add_box,size: 40.0,),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddPhoto(cameras)));
                  },
                )
              ),
            ),
            Tab(
              icon: _tabController.index==3?Icon(MdiIcons.heart,size: 40.0,)
                    :Icon(MdiIcons.heartOutline,size: 40.0,),
            ),
            Tab(
              icon: CircleAvatar(
                maxRadius: 16.0,
                backgroundColor: _tabController.index==4?Colors.black:Colors.white,
                child: CircleAvatar(
                  maxRadius: 14.0,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    maxRadius: 12.0,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(stories[0].imageUrl),
                  ),
                ),
              )
            )
          ],
        ),
      ):null,
    );
  }
}