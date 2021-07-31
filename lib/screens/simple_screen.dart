import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class SimpleScreen extends StatefulWidget {
  SimpleScreen({Key key}) : super(key: key);

  @override
  _SimpleScreenState createState() => _SimpleScreenState();
}

class _SimpleScreenState extends State<SimpleScreen> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();

  UnityWidgetController _unityWidgetController;
  double _sliderValue = 0.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _unityWidgetController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFC269ED).withOpacity(0.5),
        title: Text('STEER',style: Theme.of(context).textTheme.headline3.copyWith(color: Colors.white,fontSize: 30),),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xFF100117),Color(0xFFA720E7)]),
        ),
        child: Card(
            margin: const EdgeInsets.all(8),
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Stack(
              children: [
                UnityWidget(
                  onUnityCreated: _onUnityCreated,
                  onUnityMessage: onUnityMessage,
                  onUnitySceneLoaded: onUnitySceneLoaded,
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Card(
                    elevation: 10,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text("Destination:"),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: (){
                                print(1);
                                _unityWidgetController.postMessage(
                                  'AR Camera',
                                  'updateDestination',
                                  "0",
                                );
                              },
                              child: Container(color: Colors.purple.withOpacity(0.5),child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text("1"),
                              )),
                            ),
                            InkWell(
                              onTap: (){
                                _unityWidgetController.postMessage(
                                  'AR Camera',
                                  'updateDestination',
                                  "1",
                                );
                              },
                              child: Container(
                                color: Colors.purple.withOpacity(0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text("2"),
                                  )),
                            ),
                            InkWell(
                              onTap: (){
                                _unityWidgetController.postMessage(
                                  'AR Camera',
                                  'updateDestination',
                                  "2",
                                );
                              },
                              child: Container(
                                  color: Colors.purple.withOpacity(0.5),child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text("3"),
                                  )),
                            ),
                          ],
                        ),
                        // Slider(
                        //   onChanged: (value) {
                        //     setState(() {
                        //       _sliderValue = value;
                        //     });
                        //     setRotationSpeed(value.toString());
                        //   },
                        //   value: _sliderValue,
                        //   min: 0,
                        //   max: 20,
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  void setRotationSpeed(String speed) {
    _unityWidgetController.postMessage(
      'Cube',
      'SetRotationSpeed',
      speed,
    );
  }

  void onUnityMessage(message) {
    print('Received message from unity: ${message.toString()}');
  }

  void onUnitySceneLoaded(SceneLoaded scene) {
    print('Received scene loaded from unity: ${scene.name}');
    print('Received scene loaded from unity buildIndex: ${scene.buildIndex}');
  }

  // Callback that connects the created controller to the unity controller
  void _onUnityCreated(controller) {
    this._unityWidgetController = controller;
  }
}
