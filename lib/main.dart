import 'package:flutter/material.dart';
import 'screens/simple_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Unity Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.audiowideTextTheme(),
      ),
      home: landing(),
      // home: SimpleScreen(),
    );
  }
}

class landing extends StatefulWidget {
  const landing({Key key}) : super(key: key);

  @override
  _landingState createState() => _landingState();
}

class _landingState extends State<landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xFF100117),Color(0xFFA720E7)]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 1,),
            Divider(
              height: 30,
              thickness: 5,
              color: Colors.white,
              indent: 50,
              endIndent: 50,
            ),
            Text("TECHNO",style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white),),
            Divider(
              height: 30,
              thickness: 5,
              color: Colors.white,
              indent: 50,
              endIndent: 50,
            ),
            Expanded(
              flex: 1,
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Intro();
                }));
              },
              child: Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(color: Color(0xFF2A033D),
                  shape: BoxShape.circle
                ),
                child: Center(
                  child: Icon(Icons.navigate_next,color: Colors.white,size: 75,),
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

class Intro extends StatefulWidget {
  const Intro({Key key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TECHNO",style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white),),),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xFF100117),Color(0xFFA720E7)]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 1,),
            Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Ever felt the need of maps or some navigation system inside of a building?\nTechno fulfills your navigation and guidance needs inside of buildings and monuments.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.white),),
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return Begin();
                  }));
                },
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(color: Color(0xFF2A033D),
                      shape: BoxShape.circle
                  ),
                  child: Center(
                    child: Icon(Icons.navigate_next,color: Colors.white,size: 75,),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Begin extends StatefulWidget {
  const Begin({Key key}) : super(key: key);

  @override
  _BeginState createState() => _BeginState();
}

class _BeginState extends State<Begin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TECHNO",style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white),),),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xFF100117),Color(0xFFA720E7)]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 1,),
            Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Let's Begin",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.white),),
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return NavSet();
                  }));
                },
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(color: Color(0xFF2A033D),
                      shape: BoxShape.circle
                  ),
                  child: Center(
                    child: Icon(Icons.navigate_next,color: Colors.white,size: 75,),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavSet extends StatefulWidget {
  const NavSet({Key key}) : super(key: key);

  @override
  _NavSetState createState() => _NavSetState();
}

class _NavSetState extends State<NavSet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TECHNO",style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white),),),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xFF100117),Color(0xFFA720E7)]),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                ),
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(Icons.location_history,color: Colors.white),
                      SizedBox(width: 10,),
                      Text("My Location",style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.white),),
                    ],
                  ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.arrow_downward,color: Colors.white,),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                ),
                onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.my_location,color: Colors.white),
                    SizedBox(width: 10,),
                    Text("Where to ? ...",style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.white),),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "or scan for your location",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.white),),
                ),
              ),
              Expanded(
                flex: 1,
                  child: Icon(Icons.qr_code_scanner,color: Colors.white,size: 200,),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return SimpleScreen();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("START NAVIGATION",style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.white),),
                ),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}


