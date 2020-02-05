import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../model/tags.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

List<String> image=[
  "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
];

class _SearchState extends State<Search> with SingleTickerProviderStateMixin{
  int temp=0,lIndex=0;
  ScrollController _scrollViewController;

  @override
  void initState(){
    super.initState();
    _scrollViewController = ScrollController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: NestedScrollView(
      //   controller: _scrollViewController,
      //   headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
      //     return <Widget>[
      //       SliverAppBar(
      //         expandedHeight: 110.0,
      //         pinned: true,
      //         floating: true,
      //         forceElevated: innerBoxIsScrolled,
      //         title: Column(
      //           children: <Widget>[
      //             Padding(
      //             padding: EdgeInsets.only(left: 3.0,right: 5.0,top: 13.0),
      //             child:Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget>[
      //               GestureDetector(
      //                 child: Row(
      //                   children: <Widget>[
      //                     Icon(Icons.search,size: 40,),
      //                     Container(
      //                       // color: Colors.red,
      //                       padding: EdgeInsets.only(top: 6.0,left: 10.0),
      //                       height: 40.0,
      //                       width: 280.0,
      //                       child: Text("Search",
      //                       style:TextStyle(color: Colors.grey,fontSize: 22.0)
      //                       ),
      //                     )
      //                   ],
      //                 ),
      //                 onTap:(){},
      //               ),
      //             ],
      //           ),),
      //           ],
      //         ),
      //         elevation: 0.0,
      //         bottom: AppBar(
      //           elevation: 0.0,
      //           title: Container(
      //           height: 25.0,
      //           padding: EdgeInsets.only(),
      //           child: ListView.builder(
      //             scrollDirection: Axis.horizontal,
      //             itemCount: tagsList.length,
      //             itemBuilder: (context,i) => Padding(
      //               padding: EdgeInsets.only(left: 7.0,right: 7.0),
      //               child: RaisedButton(
      //                 color: Colors.white,
      //                 onPressed: (){},
      //                 shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(5.0),
      //                   side: BorderSide(
      //                     color: Colors.grey,
      //                   ),
      //                 ),
      //                 child: Text(tagsList[i].tName,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600),),
      //               ),
      //             ),
      //           )
      //         ),
      //         )
      //       ) 
      //     ];
      //   },
      //   body: Column(
      //     children: <Widget>[
      //       Flexible(
      //       child: ListView.builder(
      //           shrinkWrap: true,
      //           itemCount: image.length,
      //           itemBuilder: (context,i) { 
      //           i=lIndex+temp;
      //           lIndex=i;
      //           temp=18;
      //           if(i<image.length)return Column(
      //             children: <Widget>[
      //                 RightBig(i),
      //                 SixGride(i),
      //                 LeftBig(i),
      //                 SixGride(i),
      //             ],
      //           );
      //         }),
      //       // ),
      //     )
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        title: Column(
          children: <Widget>[
            Padding(
            padding: EdgeInsets.only(left: 3.0,right: 5.0,top: 10.0),
            child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.search,size: 40,),
                    Container(
                      // color: Colors.red,
                      padding: EdgeInsets.only(top: 6.0,left: 10.0),
                      height: 40.0,
                      width: 280.0,
                      child: Text("Search",
                      style:TextStyle(color: Colors.grey,fontSize: 22.0)
                      ),
                    )
                  ],
                ),
                onTap:(){},
              ),
            ],
          ),),
          ],
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(MdiIcons.qrcodeScan),
            iconSize: 30,
            onPressed: (){},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 35.0,
            padding: EdgeInsets.only(bottom: 10.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tagsList.length,
              itemBuilder: (context,i) => Padding(
                padding: EdgeInsets.only(left: 7.0,right: 7.0),
                child: RaisedButton(
                  color: Colors.white,
                  onPressed: (){},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  child: Text(tagsList[i].tName,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600),),
                ),
              ),
            )
          ),
          Flexible(
            // fit: FlexFit.tight,
            child: ListView.builder(
                shrinkWrap: true,
              // children: List.generate(image.length, (i) { 
                itemCount: image.length,
                itemBuilder: (context,i) { 
                i=lIndex+temp;
                lIndex=i;
                temp=18;
                if(i<image.length)return Column(
                  children: <Widget>[
                      RightBig(i),
                      SixGride(i),
                      LeftBig(i),
                      SixGride(i),
                  ],
                );
              }),
            // ),
          )
        ],
      )
    );
  }
}

class RightBig extends StatefulWidget {
  int i;
  RightBig(this.i);
  @override
  _RightBigState createState() => _RightBigState(i);
}

class _RightBigState extends State<RightBig> {
  int i;
  _RightBigState(this.i);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2.0,right: 2.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  if(i<image.length)Container(width: 210.0,height: 120.0,color: Colors.grey,
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(image[i]),
                    ),
                  ),
                  Container(height: 2.0,),
                  if((i+1)<image.length)Container(width: 210.0,height: 120.0,color:Colors.grey,
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(image[i+1]),
                    ),
                  ),
                ],
              ),
            ),
            Container(width: 2.0,),
            if((i+2)<image.length)Expanded(
              child: Container(height: 240.0,color:Colors.grey,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(image[i+2]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SixGride extends StatefulWidget {
  int i;
  SixGride(this.i);
  @override
  _SixGrideState createState() => _SixGrideState(i);
}

class _SixGrideState extends State<SixGride> {
  int i;
  _SixGrideState(this.i);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              if((i+3)<image.length)Container(height: 120.0,width: 135.0,color: Colors.grey,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(image[i+3]),
                ),
              ),
              if((i+4)<image.length)Container(height: 120.0,width: 135.0,color: Colors.grey,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(image[i+4])
                ),
              ),
              if((i+5)<image.length)Container(height: 120.0,width: 135.0,color: Colors.grey,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(image[i+5]),
                ),
              ),
            ],
          ),
          Container(height: 2.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              if((i+6)<image.length)Container(height: 120.0,width: 135.0,color: Colors.grey,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(image[i+6]),
                ),
              ),
              if((i+7)<image.length)Container(height: 120.0,width: 135.0,color: Colors.grey,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(image[i+7]),
                ),
              ),
              if((i+8)<image.length)Container(height: 120.0,width: 135.0,color: Colors.grey,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(image[i+8]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LeftBig extends StatefulWidget {
  int i;
  LeftBig(this.i);
  @override
  _LeftBigState createState() => _LeftBigState(i);
}

class _LeftBigState extends State<LeftBig> {
  int i;
  _LeftBigState(this.i);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.0,right: 2.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            if((i+9)<image.length)Expanded(
              child: Container(height: 240.0,color: Colors.grey,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(image[i+9]),
                ),
              ),
            ),
            Container(width: 2.0,),
            Expanded(
              child: Column(
                children: <Widget>[
                  if((i+10)<image.length)Container(width: 210.0,height: 120.0,color: Colors.grey,
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(image[i+10]),
                    ),
                  ),
                  Container(height: 2.0,),
                  if((i+11)<image.length)Container(width: 210.0,height: 120.0,color: Colors.grey,
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(image[i+11]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}