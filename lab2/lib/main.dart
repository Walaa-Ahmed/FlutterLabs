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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Lab2'),
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
  double _offer = 0;
  double _Price = 100;

  void _increment() {
    setState(() {
      if (_offer < 100.0) {
        _offer++;
        _calcPriceAfterSale();
      }
    });
  }

  void _decrement() {
    setState(() {
      if (_offer > 0.0) {
        _offer--;
        _calcPriceAfterSale();
      }
    });
  }

  double _calcPriceAfterSale ()=> _Price * (1 - _offer / 100);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10.0),
              child: RichText(
                text: TextSpan(
                  text: "item price is ",
                  style: TextStyle(color: Colors.black87),
                  children: <TextSpan>[
                    TextSpan(text: '$_Price EG', style: TextStyle(color: Colors.red)),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text("set offer to the product",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                      child: Text("+"),
                      color: Colors.blue,
                      onPressed: _increment),
                ),
                Text("$_offer%"),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                      child: Text("-"),
                      color: Colors.blue,
                      onPressed: _decrement),
                )
              ],
            ),
            RichText(
              text: TextSpan(
                text: "price after apply offer ",
                style: TextStyle(color: Colors.black87),
                children: <TextSpan>[
                  TextSpan(text: '${_calcPriceAfterSale()} EG', style: TextStyle(color: Colors.red)),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}