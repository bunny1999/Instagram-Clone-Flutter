import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../model/stories.dart';
import '../model/posts.dart';
import '../model/myPosts.dart';

class Person extends StatefulWidget {
  @override
  _PersonState createState() => _PersonState();
}

List<Widget> icons=[
  Icon(Icons.remove),
  Icon(Icons.music_note,color: Colors.black,size: 40.0,), 
  Icon(Icons.date_range,color: Colors.black,size: 40.0,), 
  Icon(Icons.directions_bike,color: Colors.black,size: 40.0,), 
  Icon(Icons.directions_boat,color: Colors.black,size: 40.0,), 
  Icon(Icons.directions_run,color: Colors.black,size: 40.0,), 
  Icon(Icons.disc_full,color: Colors.black,size: 40.0,), 
  Icon(Icons.drive_eta,color: Colors.black,size: 40.0,), 
  Icon(Icons.edit,color: Colors.black,size: 40.0,), 
  Icon(Icons.edit_location,color: Colors.black,size: 40.0,), 
  Icon(Icons.error_outline,color: Colors.black,size: 40.0,), 
  Icon(Icons.ev_station,color: Colors.black,size: 40.0,), 
];

class _PersonState extends State<Person> with SingleTickerProviderStateMixin{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String userName="_bunny1999";
  int postNo = mPost.length;
  int following=130;
  int followers=150;
  TabController _tabController;
  ScrollController _scrollController;
  @override
  void initState(){
    super.initState();
    _tabController= TabController(initialIndex: 0,length: 2,vsync: this);
    _scrollController = ScrollController();
  }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        elevation: 0.0,
        child: Column(
          children: <Widget>[
          Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:15.0,left: 20.0,bottom: 10.0),
              child: Text(userName,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.av_timer,size: 30.0,color: Colors.black,),
              title: Text("Archive",style: TextStyle(fontSize: 18.0),),
            ),
            ListTile(
              leading: Icon(Icons.access_time,size: 30.0,color: Colors.black,),
              title: Text("Your Activity",style: TextStyle(fontSize: 18.0),),
            ),
            ListTile(
              leading: Icon(MdiIcons.qrcodeScan,size: 30.0,color: Colors.black,),
              title: Text("Nametag",style: TextStyle(fontSize: 18.0),),
            ),
            ListTile(
              leading: Icon(Icons.bookmark_border,size: 30.0,color: Colors.black,),
              title: Text("Saved",style: TextStyle(fontSize: 18.0),),
            ),
            ListTile(
              leading: Icon(Icons.format_line_spacing,size: 30.0,color: Colors.black,),
              title: Text("Close Friends",style: TextStyle(fontSize: 18.0),),
            ),
            ListTile(
              leading: Icon(Icons.person_add,size: 30.0,color: Colors.black,),
              title: Text("Discover People",style: TextStyle(fontSize: 18.0),),
            ),
            ListTile(
              leading: Icon(MdiIcons.facebook,size: 30.0,color: Colors.black,),
              title: Text("Open Facebook",style: TextStyle(fontSize: 18.0),),
            ),
          ],
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ListTile(
              leading: Icon(Icons.settings,size: 30.0,color: Colors.black,),
              title: Text("Setting",style: TextStyle(fontSize: 18.0),),
            ),
          ),
        )
        ]),
      ),
      appBar: AppBar(
        elevation: 0.0,
        title: Padding(
          padding: EdgeInsets.only(),
          child:  GestureDetector(
            child: Row(
              children: <Widget>[
                Text(userName+" ",style:TextStyle(fontWeight: FontWeight.bold)),
                Icon(Icons.keyboard_arrow_down)   
              ],
            ),
            onTap: (){},
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Stack(
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    _scaffoldKey.currentState.openEndDrawer();
                  },
                  icon: Icon(Icons.menu,color: Colors.black,size: 35.0,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0,top:5.0),
                  child: CircleAvatar(
                    maxRadius: 11,
                    backgroundColor: Colors.red,
                    child: Text("2",style:TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 25.0,top:25.0),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  child: Stack(
                    children: <Widget>[
                      stories[0].yourStory==false?
                      CircleAvatar(
                        maxRadius: 42,
                        backgroundColor: Color(0xffA9488B),
                        backgroundImage: NetworkImage(stories[0].imageUrl),
                      )
                      :CircleAvatar(
                        backgroundColor:Color(0xffA9488B),
                        maxRadius: 42,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          maxRadius: 38,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(stories[0].imageUrl),
                            maxRadius: 36,
                          ),
                        ),
                      ),
                      if(stories[0].yourStory==false)Padding(
                        padding: EdgeInsets.only(left: 58.0,top:65.0),
                        child:CircleAvatar(
                        backgroundColor: Colors.white,
                        maxRadius: 12.0,
                        child: CircleAvatar(
                          maxRadius: 10.0,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.add,color: Colors.white,size: 18.0,),
                        ),
                      ),),
                    ]
                  ),
                  onTap: (){},
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('${postNo}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                          Container(height: 3.0,),
                          Text("Posts",style: TextStyle(fontSize: 18.0),)
                        ],
                      ),
                      Container(width: 15.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('${followers}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                          Container(height: 3.0,),
                          Text("Followers",style: TextStyle(fontSize: 18.0),)
                        ],
                      ),
                      Container(width: 15.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('${following}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                          Container(height: 3.0,),
                          Text("Following",style: TextStyle(fontSize: 18.0),)
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0,left: 25.0),
            child: Container(
              height: 90,
              child:Text("Agra Boy ☺\nWish me on 9-Jan ☃ ☃\nAgra -> Delhi ✈\nMusic Lover ♫ ♫ ♫",style: TextStyle(fontSize: 16.0),)
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left:15.0,right: 15.0,top: 10.0,bottom: 20.0),
            child: Container(
              height: 30.0,
              child: RaisedButton(
                onPressed: (){},
                color: Colors.white,
                child: Text("Edit Profile",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(
                    color: Colors.grey
                  )
                ),
              ),
            ),
          ),
          Container(
            height: 110.0,
            child:ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: stories.length,
            itemBuilder: (context,i) {
              return Container(
              // height: 20.0,
              padding: EdgeInsets.only(left: 20.0),
              child:Column(  
              children: <Widget>[
                GestureDetector(
                  child:i==0?
                  CircleAvatar(
                    maxRadius: 34,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      maxRadius: 32,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.add,color: Colors.black,size: 40.0,),
                    ),
                  )
                  :CircleAvatar(
                    backgroundColor: Colors.grey,
                    maxRadius: 36,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 34,
                      child: CircleAvatar(
                        backgroundColor: Colors.black26,
                        child: icons[i],
                        maxRadius: 30,
                      ),
                    ),
                  ),
                  onTap: (){},
                ),
                Padding(padding: EdgeInsets.only(top:5.0),),
                i!=0?Text("#p${i}"+stories[i].name,style:TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600))
                :Padding(
                  padding: EdgeInsets.only(top:5.0),
                  child:Text("New",style:TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600)),
                ),
              ],
            )
            );
            }
          ),
        ),
        Padding(
          padding: EdgeInsets.only(),
          child: TabBar(
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                child: Icon(Icons.grid_on,size: 30.0,),
              ),
              Tab(
                child: Icon(Icons.person_pin,size: 30.0,),
              )
            ],
          ),
        ),
        Container(
          height: 500.0,
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              GridView.builder(
                itemCount: mPost.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 2.0,
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (context,i) => Container(
                  color: Colors.grey,
                  child: Image(
                    image: NetworkImage(mPost[i].imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),   
              GridView.builder(
                itemCount: posts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 2.0,
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (context,i) => Container(
                  color: Colors.grey,
                  child: Image(
                    image: NetworkImage(posts[i].photo),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        )
        ],
      ),
    );
  }
}