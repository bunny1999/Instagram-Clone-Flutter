import 'package:flutter/material.dart';
import '../model/stories.dart';
import '../model/posts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title:Padding(
            padding: EdgeInsets.only(left:60.0),
            child:Text("Instagram",
            style:TextStyle(fontFamily:'Pacifico',fontWeight: FontWeight.w500,fontSize: 30.0),
          )),
          leading: IconButton(
            icon: Icon(MdiIcons.cameraOutline),
            iconSize: 40.0,
            onPressed: (){},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(MdiIcons.televisionClassic),
              iconSize: 40.0,
              onPressed: (){},
            ), 
            Stack(
              children: <Widget>[
                IconButton(
                  icon: Icon(MdiIcons.sendOutline),
                  iconSize: 40.0,
                  onPressed: (){},
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0,top:2.0),
                  child: CircleAvatar(
                    maxRadius: 13,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      maxRadius: 10,
                      backgroundColor: Colors.red,
                      child: Text("2",style:TextStyle(color: Colors.white)),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
          body: Container(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top:5.0,left: 16.0,right: 10.0),
              child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Stories",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                FlatButton(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.arrow_right,size:25.0),
                      Text("Watch All",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  onPressed: (){},
                ),
              ],
            )),
            Container(
                height: 110.0,
                child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (context,i) =>Container(
                  // height: 20.0,
                  padding: EdgeInsets.only(left: 20.0),
                  child:Column(  
                  children: <Widget>[
                    GestureDetector(
                      child: Stack(
                        children: <Widget>[
                          i==0 && stories[i].yourStory==false?
                          CircleAvatar(
                            maxRadius: 34,
                            backgroundColor: Color(0xffA9488B),
                            backgroundImage: NetworkImage(stories[i].imageUrl),
                          )
                          :CircleAvatar(
                            backgroundColor: stories[i].wasLive == true || stories[i].watched==true ?Colors.grey:Color(0xffA9488B),
                            maxRadius: 36,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              maxRadius: 32,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(stories[i].imageUrl),
                                maxRadius: 30,
                              ),
                            ),
                          ),
                          if(i==0 && stories[i].yourStory==false)Padding(
                            padding: EdgeInsets.only(left: 48.0,top:50.0),
                            child:CircleAvatar(
                            backgroundColor: Colors.white,
                            maxRadius: 12.0,
                            child: CircleAvatar(
                              maxRadius: 10.0,
                              backgroundColor: Colors.blue,
                              child: Icon(Icons.add,color: Colors.white,size: 18.0,),
                            ),
                          ),),
                          if(stories[i].isLive == true)Padding(
                            padding: EdgeInsets.only(left:11.0,top:60.0),
                            child:Stack(
                              children: <Widget>[
                                Container(
                                  height: 20.0,
                                  width: 50.0,
                                  child: RaisedButton(
                                    onPressed: (){},
                                    color: Color(0xffA9488B),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text("Live",style:TextStyle(fontSize: 16.0,color:Colors.white)),
                                )
                              ],
                            )
                          ),
                          if(stories[i].wasLive == true)Padding(
                            padding: EdgeInsets.only(left:11.0,top:60.0),
                            child:Stack(
                              children: <Widget>[
                                Container(
                                  height: 20.0,
                                  width: 50.0,
                                  child: RaisedButton(
                                    onPressed: (){},
                                    color: Colors.grey,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text("Live",style:TextStyle(fontSize: 16.0,color:Colors.white)),
                                )
                              ],
                            )
                          ),
                        ],
                      ),
                      onTap: (){},
                    ),
                    Padding(padding: EdgeInsets.only(top:10.0),),
                    Text(stories[i].name,style:TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600)),
                  ],
                )),
              ),
            ),
            // Divider(height: 2.0,),
            Column(
              // child: ListView.builder(
                children: List.generate(posts.length, (i) =>
                // itemCount: posts.length,
                // itemBuilder: (context,i) => 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Divider(),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            child: Row(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(left:20.0),),
                                CircleAvatar(
                                  backgroundImage: NetworkImage(posts[i].thumbNail),
                                  backgroundColor: Color(0xffA9488B),
                                  maxRadius: 24,
                                ),
                                Padding(padding: EdgeInsets.only(left:10.0),),
                                Text(posts[i].name,style:TextStyle(fontSize: 20,fontWeight: FontWeight.w800)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child:IconButton(
                            icon: Icon(Icons.more_horiz,size: 30.0,),
                            onPressed: (){},
                          ),),
                        ],
                      ),
                    ),
                    Divider(height: 2.0,),
                    Center(
                      child: Image(
                        height: 400.0,
                        fit: BoxFit.cover,
                        image: NetworkImage(posts[i].photo),
                      ),
                    ),
                    Divider(height: 2.0,),
                    Padding(
                      padding: EdgeInsets.only(left:15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              IconButton(
                                onPressed: (){},
                                iconSize: 40,
                                icon: Icon(MdiIcons.heartOutline),
                              ),
                              IconButton(
                                onPressed: (){},
                                iconSize: 40,
                                icon: Icon(MdiIcons.commentOutline),
                              ),
                              IconButton(
                                onPressed: (){},
                                iconSize: 40,
                                icon: Icon(MdiIcons.sendOutline),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.bookmark_border),
                            iconSize: 40,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:28.0),
                      child: Text(posts[i].date,style:TextStyle(fontSize: 15,color:Colors.grey)),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                  ],
                ),
              ),
            )       
          ],
        ),
      ),
    );
  }
}