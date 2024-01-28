class Employee {
  var _empName;
  var _empAge;
  var empSalary;

  // Main constructor
  Employee({empName, empAge, this.empSalary = 399}) :
        _empName = empName,
        _empAge = empAge;

  // Named constructor for part-time employees
  Employee.partTime({empName}) :
        _empName = empName,
        empSalary = 0;  // Assuming part-time employees have no fixed salary

  // Named constructor for full-time employees
  Employee.fullTime({empName, empAge}) :
        _empName = empName,
        _empAge = empAge,
        empSalary = 500; // Assuming a default salary for full-time employees

  @override
  String toString() {
    return 'Employee{_empName: $_empName, _empAge: $_empAge, empSalary: $empSalary}';
  }

  void showEmpInfo() {
    print('Employee name is $_empName');
    print('Employee age is $_empAge');
    print('Employee salary is $empSalary');
  }
}

void main() {
  var emp = Employee(
      empName: 'Rahul',
      empAge: 1,
      empSalary: 10000
  );
  emp.showEmpInfo();
}
