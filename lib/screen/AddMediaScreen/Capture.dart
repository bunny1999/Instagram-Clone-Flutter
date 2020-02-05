import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class Capture extends StatefulWidget {
  List<CameraDescription> cameras;
  String action;
  Widget apBar;
  Capture({this.apBar,this.action,this.cameras});
  @override
  _CaptureState createState() => _CaptureState(apBar1:apBar,action1:action,cameras:cameras);
}

class _CaptureState extends State<Capture> {
  List<CameraDescription> cameras;
  String action1;
  Widget apBar1;
  CameraController _cameraController;
  _CaptureState({this.apBar1,this.action1,this.cameras});
  
  @override
  void initState(){
    super.initState();
    _cameraController=CameraController(widget.cameras[1],ResolutionPreset.ultraHigh);
    _cameraController.initialize().then((_){
      if(!mounted){
        return;
      }
      setState(() {
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: apBar1,
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height/2,
                child: !_cameraController.value.isInitialized?Container(
                  color: Colors.black,
                )
                :Container(
                  height: MediaQuery.of(context).size.height/2,
                  child: CameraPreview(_cameraController),
                ),
              ),
              Positioned(
                left: 0,
                bottom: 10,
                child: IconButton(
                  icon: Icon(Icons.rotate_left,size: 40.0,color: Colors.white,),
                  onPressed: (){},  
                ),
              ),
              Positioned(
                right: 0,
                bottom: 10,
                child: Icon(Icons.flash_on,color:Colors.white,size:40.0),
              ),
            ],
          ),
          Container(
            height: (MediaQuery.of(context).size.height+150)/4,
            child: Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundColor: Colors.black26,
                maxRadius: 45.0,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 26.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}