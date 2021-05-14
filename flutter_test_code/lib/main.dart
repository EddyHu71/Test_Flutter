import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Test Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      drawer: Drawer(
          child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(55, 113, 170, 1.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: new AssetImage('assets/profile.jpg'),
                    ),
                    SizedBox(height: 20.0),
                    Center(
                      child: new Text("Eddy",
                          style: new TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    Center(
                      child: new Text("eddyhu71@gmail.com",
                          style: new TextStyle(
                              fontSize: 12.0,
                              color: Colors.white70,
                              fontWeight: FontWeight.normal)),
                    )
                  ],
                )),
            Expanded(
                flex: 7,
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    makeMenuItem(Icons.message, "Messages"),
                    makeMenuItem(Icons.phone_forwarded, "Calls"),
                    makeMenuItem(Icons.dialpad, "Dial"),
                    makeMenuItem(Icons.contacts, "Contacts"),
                    makeMenuItem(Icons.more_horiz, "More"),
                    makeMenuItem(Icons.settings, "Settings")
                  ],
                )),
          ],
        ),
      )),
      body: Center(child: Text("Selamat Datang")),
    );
  }

  Column makeMenuItem(icon, title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        Center(
            child: Icon(
          icon,
          size: 36.0,
          color: Colors.white,
        )),
        SizedBox(height: 10.0),
        new Center(
          child: new Text(title,
              style: new TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}
