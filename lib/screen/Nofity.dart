import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../model/notification.dart';

class Notify extends StatefulWidget {
  @override
  _NotifyState createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Activity",
          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 23.0),
          ),
      ), 
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Stack(
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 27,
                  backgroundColor: Colors.black87,
                  child: CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person_add,size: 32.0,color: Colors.black87,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 34.0,top:2.0),
                  child: CircleAvatar(
                    maxRadius: 14.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      maxRadius: 11.0,
                      backgroundColor: Colors.red,
                      child: Text("2",style:TextStyle(color: Colors.white)),
                    ),
                  ),
                )
              ],
            ),
            title: Text("Follow Requests",style: TextStyle(fontWeight: FontWeight.w700),),
            subtitle: Text("Approve or ignore request"),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              today.length!=null
              ?Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Heading("Today"),
                  Column(
                    children: List.generate(today.length, (i)=>
                      NotificationListTiles(today[i]),
                    ),
                  )
                ],
              )
              :null,
              yesterday.length!=null
              ?Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Heading("Yesterday"),
                  Column(
                    children: List.generate(yesterday.length, (i)=>
                      NotificationListTiles(yesterday[i]),
                    ),
                  )
                ],
              )
              :null,
              month.length!=null
              ?Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Heading("This Month"),
                  Column(
                    children: List.generate(month.length, (i)=>
                      NotificationListTiles(month[i]),
                    ),
                  )
                ],
              )
              :null,
              eariler.length!=null
              ?Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Heading("Earlier"),
                  Column(
                    children: List.generate(eariler.length, (i)=>
                      NotificationListTiles(eariler[i]),
                    ),
                  )
                ],
              )
              :null,
            ],
          )
        ],
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String heading;
  Heading(this.heading);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:17.0,top: 10.0,bottom: 10.0),
      child: Text(heading,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20.0),),
    );
  }
}

class NotifyThumbNail extends StatefulWidget {
  List<String> imageUrl;
  NotifyThumbNail(this.imageUrl);
  @override
  _NotifyThumbNailState createState() => _NotifyThumbNailState(imageUrl);
}

class _NotifyThumbNailState extends State<NotifyThumbNail> {
  List<String> imageUrl;
  _NotifyThumbNailState(this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return imageUrl.length>1
    ?Padding(
      padding: EdgeInsets.only(),
      child:Stack(
      children: <Widget>[
        CircleAvatar(
          maxRadius: 20.0,
          backgroundImage: NetworkImage(imageUrl[0]),
        ),
        Padding(
          padding: const EdgeInsets.only(top:9.0,left: 12.0),
          child: CircleAvatar( 
            backgroundColor: Colors.white,
            child: CircleAvatar(
              maxRadius: 17.0,
              backgroundImage: NetworkImage(imageUrl[1]),
            )
          ),
        )
      ],
    ))
    // :imageUrl.length>2
    // ?Padding(
    //   padding: EdgeInsets.only(),
    //   child:Stack(
    //   children: <Widget>[
    //     CircleAvatar(
    //       maxRadius: 20.0,
    //       backgroundImage: NetworkImage(imageUrl[0]),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.only(top:6.0,left: 8.0),
    //       child: CircleAvatar( 
    //         backgroundColor: Colors.white,
    //         child: CircleAvatar(
    //           maxRadius: 17.0,
    //           backgroundImage: NetworkImage(imageUrl[1]),
    //         )
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.only(top:11.0,left: 17.0),
    //       child: CircleAvatar( 
    //         backgroundColor: Colors.white,
    //         child: CircleAvatar(
    //           maxRadius: 17.0,
    //           backgroundColor: Colors.grey,
    //           child: Icon(Icons.more_horiz,color: Colors.black87,),
    //         )
    //       ),
    //     )
    //   ],
    // ))  
    :imageUrl.length==1
    ?Padding(
      padding: EdgeInsets.only(),
      child:CircleAvatar(
      maxRadius: 20.0,
      backgroundImage: NetworkImage(imageUrl[0]),
    ))
    :null;
  }
}

class NotificationListTiles extends StatefulWidget {
  notification notificationData;
  NotificationListTiles(this.notificationData);
  @override
  _NotificationListTilesState createState() => _NotificationListTilesState(notificationData);
}

class _NotificationListTilesState extends State<NotificationListTiles> {
  notification notificationData;
  _NotificationListTilesState(this.notificationData);
  @override
  Widget build(BuildContext context) {
    return notificationData.action=="started following you"
      ?ListTile(
        leading: NotifyThumbNail(notificationData.imageURL),
        title: TextGen(notificationData.name,notificationData.action),
        trailing: notificationData.name.length==1?Container(
          width: 80.0,
          height: 30.0,
          child: RaisedButton(
            color: Colors.blue,
            onPressed: (){},
            child: Text("Follow",style:TextStyle(color: Colors.white)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0)
            ),
          ),
        )
        :null,
      )
    :notificationData.action=="liked your photo"
    ?ListTile(
      leading: NotifyThumbNail(notificationData.imageURL),
      title: TextGen(notificationData.name,notificationData.action),
      trailing: Container(
        height: 40.0,
        width: 40.0,
        child: Image(
          image: NetworkImage(notificationData.actionedImageUrl),
          fit: BoxFit.cover,
        ),
      ),
    )
    :notificationData.action=="You Liked"
    ?ListTile(
      leading: Stack(
        children: <Widget>[
          NotifyThumbNail(notificationData.imageURL),
          Padding(
            padding: const EdgeInsets.only(left: 25.0,top:20.0),
            child: CircleAvatar(
              maxRadius: 12,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                maxRadius: 9,
                backgroundColor: Colors.red,
                child: Text("#",style:TextStyle(color: Colors.white)),
              ),
            ),
          )
        ],
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(notificationData.action+" "+'${notificationData.tagImages.length}'+" posts taged"),
          Row(
            children: <Widget>[
              GestureDetector(
                child: Text(notificationData.tag,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500),),
                onTap: (){},
              ),
              Text(" this week.")
            ],
          )
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top:5.0),
        child: Row(
          children: <Widget>[
            Container(
              height: 50.0,
              width: 50.0,
              child: Image(
                image: NetworkImage(notificationData.tagImages[0]),
                fit: BoxFit.cover,
              ),
            ),
            Container(width: 2.0,),
            Container(
              height: 50.0,
              width: 50.0,
              child: Image(
                image: NetworkImage(notificationData.tagImages[1]),
                fit: BoxFit.cover,
              ),
            ),
            Container(width: 2.0,),
            Container(
              height: 50.0,
              width: 50.0,
              child: Image(
                image: NetworkImage(notificationData.tagImages[2]),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    )
    :null;
  }
}

class TextGen extends StatefulWidget {
  List<String> names;
  String action;
  TextGen(this.names,this.action);
  @override
  _TextGenState createState() => _TextGenState(names,action);
}

class _TextGenState extends State<TextGen> {
  List<String> names;
  String action;
  _TextGenState(this.names,this.action);
  @override
  Widget build(BuildContext context) {
    return names.length>2?
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(names[0]+",",style: TextStyle(fontWeight: FontWeight.bold)),
            Text(names[1],style: TextStyle(fontWeight: FontWeight.bold)),
            Text(" and "),
            Text('${names.length-2} others ',style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Text(action),
      ]
    )
    :names.length==2?
    // FittedBox(
      // fit: BoxFit.fitWidth,
      // child: Text(),
    // )
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
      children: <Widget>[
        Text(names[0],style: TextStyle(fontWeight: FontWeight.bold)),
        Text(" and "),
        Text(names[1],style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
    Text(action),
    ])
    :names.length==1?
    Row(
      children: <Widget>[
        Text(names[0]+" ",style: TextStyle(fontWeight: FontWeight.bold)),
        Text(action),
      ],
    )
    :null;
  }
}