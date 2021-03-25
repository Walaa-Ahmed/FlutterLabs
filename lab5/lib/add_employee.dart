import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'WebService.dart';

class AddEmployee extends StatefulWidget {
  @override
  _AddEmpView createState() => _AddEmpView();
}

class _AddEmpView extends State<AddEmployee> {
  final name = TextEditingController();
  final age = TextEditingController();

  void request() async {
    final result =
        await WebService().createEmployee(name.text, age.text);
    print(result.age);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'Add Employee',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
              controller: name,
              decoration: InputDecoration(hintText: 'Employee Name')),
          TextField(
              controller: age,
              decoration: InputDecoration(hintText: 'Employee age')),
          SizedBox(
            height: 30,
          ),
          Consumer<WebService>(
            builder: (context, model, child) {
             return FloatingActionButton.extended(
                backgroundColor: Colors.blue,
                onPressed: () {
                  model.createEmployee(name.text, age.text).then((value) => Navigator.pop(context));
                },
                label: Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
