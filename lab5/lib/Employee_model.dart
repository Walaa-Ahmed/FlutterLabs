class Employee{
  final int id;
  final String name;
  final String age;

  Employee({this.id , this.name  , this.age });

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
      id: json["id"],
      name: json["employee_name"],
      age: json["employee_age"],);

  Map<String, dynamic> toJson() =>
      {"id": id, "employee_name": name, "employee_age": age };
}

