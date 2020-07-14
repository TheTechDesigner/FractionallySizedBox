import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'FractionallySizedBox';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        // color: Color(0xFF1B1F32),
        child: Column(
          children: <Widget>[
            Container(
              height: 125.0,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFFBE0E6),
              child: RaisedButton(
                onPressed: () {},
                color: Color(0xFFC41A3B),
                textColor: Colors.white,
                child: Text(
                  'RaisedButton',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            Divider(
              height: 8.0,
            ),
            Container(
              height: 125.0,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFFBE0E6),
              child: FractionallySizedBox(
                widthFactor: 0.5,
                child: RaisedButton(
                  onPressed: () {},
                  color: Color(0xFFC41A3B),
                  textColor: Colors.white,
                  child: Text('widthFactor',
                  style: TextStyle(fontSize: 20.0),),
                ),
              ),
            ),
            Divider(
              height: 8.0,
            ),
            Container(
              height: 130.0,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFFBE0E6),
              child: FractionallySizedBox(
                heightFactor: 0.32,
                child: RaisedButton(
                  onPressed: () {},
                  color: Color(0xFFC41A3B),
                  textColor: Colors.white,
                  child: Text('heightFactor',
                  style: TextStyle(fontSize: 20.0),),
                ),
              ),
            ),
            Divider(
              height: 8.0,
            ),
            Container(
              height: 130.0,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFFBE0E6),
              child: FractionallySizedBox(
                heightFactor: 0.32,
                widthFactor: 0.5,
                child: RaisedButton(
                  onPressed: () {},
                  color: Color(0xFFC41A3B),
                  textColor: Colors.white,
                  child: Text('Both',
                  style: TextStyle(fontSize: 20.0),),
                ),
              ),
            ),
            Divider(
              height: 8.0,
            ),
            Container(
              height: 130.0,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFFBE0E6),
              child: FractionallySizedBox(
                heightFactor: 0.32,
                widthFactor: 0.5,
                alignment: Alignment.bottomRight,
                child: RaisedButton(
                  onPressed: () {},
                  color: Color(0xFFC41A3B),
                  textColor: Colors.white,
                  child: Text('Alignment',
                  style: TextStyle(fontSize: 20.0),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
