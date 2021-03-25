import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as https;
import 'package:lab5/Employee_model.dart';

class WebService extends ChangeNotifier{

  List<Employee> empList = List();

  Future<List<Employee>> loadEmployeeData () async{
    String url = "https://dummy.restapiexample.com/api/v1/employees";
    final response = await https.get(url);

    if(response.statusCode == 200){

      final json = jsonDecode(response.body);
      final Iterable employeeList = json["data"];
      empList = employeeList.map((item) => Employee.fromJson(item)).toList();
      notifyListeners();
      return empList;

    }else{
      throw Exception("error loading employees");
    }

  }


  Future<Employee> createEmployee(String employee_name , String employee_age ) async {
    final response = await https.post(
      Uri.parse('https://dummy.restapiexample.com/api/v1/create'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{

        'employee_name': employee_name,
        'employee_age': employee_age,
      }),
    );

    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      Employee emp = Employee.fromJson(jsonDecode(response.body)["data"]);
      empList.add(emp);
      notifyListeners();
      return emp;
    }
    else if (response.statusCode != 200) {
      print(response.statusCode);
       print('error to load data');
    }
    else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to load data');
    }
  }
}