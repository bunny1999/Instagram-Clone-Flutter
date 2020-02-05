import 'package:flutter/material.dart';
import '../../model/myPosts.dart';
class Gallery extends StatefulWidget {
  Widget apBar;
  Gallery({this.apBar});
  @override
  _GalleryState createState() => _GalleryState(apBar);
}

class _GalleryState extends State<Gallery> {
  Widget apBar;
  _GalleryState(this.apBar);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: apBar,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height/2,
                color: Colors.grey,
              ),
            ],
          ),
          Container(height: 2.0,),
          Container(
          height: 500.0,
          child:GridView.builder(
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
          ),
        ],
      ),
    );
  }
}