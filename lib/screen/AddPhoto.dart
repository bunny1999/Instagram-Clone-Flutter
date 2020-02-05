import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import '../screen/AddMediaScreen/Gallery.dart';
import '../screen/AddMediaScreen/Capture.dart';

class AddPhoto extends StatefulWidget {
  List<CameraDescription> cameras;
  AddPhoto(this.cameras);
  @override
  _AddPhotoState createState() => _AddPhotoState(cameras);
}

class _AddPhotoState extends State<AddPhoto> with SingleTickerProviderStateMixin {
  List<CameraDescription> cameras;
  _AddPhotoState(this.cameras);
  TabController _tabController;
  
  @override
  void initState(){
    super.initState();
    _tabController=TabController(initialIndex: 1,length: 3,vsync: this);
    _tabController.addListener(_setForChange);
  }

  void _setForChange(){
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Gallery(
            apBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.close,size: 30.0,),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
              title: DropdownButton<String>(
                hint: Text("Gallery",style: TextStyle(fontWeight: FontWeight.bold),),
                items: <String>[
                  "A",
                  "B",
                  "C"
                ].map((String value){
                  DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                // onChanged: (_){},
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right:15.0,top:15.0),
                  child: GestureDetector(
                    onTap: (){},
                    child: Text("Next",style:TextStyle(color: Colors.blue,fontSize:25.0,fontWeight: FontWeight.bold))
                  ),
                ),
              ],
            ),
          ),
          Capture(
            apBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.close,size: 30.0,),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
              title: Text("Photo",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            action: "Photo",
            cameras: cameras,
          ),
          Capture(
            apBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.close,size: 30.0,),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
              title: Text("Video",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            action: "Video",
            cameras: cameras,
          ),            
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: _tabController.index==0?Text("GALLERY",style:TextStyle(fontSize: 18.0)) 
              :Text("GALLERY",style:TextStyle(fontSize: 18.0,color: Colors.grey)),
            ),
            Tab(
              icon: _tabController.index==1?Text("PHOTO",style:TextStyle(fontSize: 18.0)) 
              :Text("PHOTO",style:TextStyle(fontSize: 18.0,color: Colors.grey)),
            ),
            Tab(
              icon: _tabController.index==2?Text("VIDEO",style:TextStyle(fontSize: 18.0)) 
              :Text("VIDEO",style:TextStyle(fontSize: 18.0,color: Colors.grey)),
            ),
          ],
        ),
      )
    );
  }
}