import 'package:flutter/material.dart';
import 'package:lab5/WebService.dart';
import 'package:provider/provider.dart';

import 'employee_list.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
          create: (context) => WebService(),
      child:MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Employee',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
      EmployeeList(),
      // LoginPage(),
      // SignUpPage(),
      //DetailsScreen(),

    );
  }
}

//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body:Scaffold(
//
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){},
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
