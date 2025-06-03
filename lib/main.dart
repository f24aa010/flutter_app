
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static var _message = 'ok.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Name'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                _message,
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto"),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10.0),
            ),

            Padding(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed:buttonPressed,
              child: Text(
                  "tap me!",
                  style: TextStyle(fontSize:32.0,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
                )
              )
            ),
          ],
        ),
      ),
    );
  }

  void buttonPressed(){
  showDialog(
    context: context,
    builder: (BuildContext context) => SimpleDialog(
      title: const Text('Select assignment'),
      children: <Widget>[
        SimpleDialogOption(
          onPressed: () => Navigator.pop<String>(context, 'One'),
          child: const Text('One'),
        ),
        SimpleDialogOption(
          onPressed: () => Navigator.pop<String>(context, 'Two'),
          child: const Text('Two'),
        ),
        SimpleDialogOption(
          onPressed: () => Navigator.pop<String>(context, 'Three'),
          child: const Text('Three'),
        ),
      ],
    ),
  ).then<void>((value) => resultAlert(value));
}


void resultAlert(String value) {
  setState((){
    _message = 'selected: $value';
  });
}


}

