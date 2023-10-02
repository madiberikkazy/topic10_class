import 'dart:ffi';

//1
// void student({String name, int age, String grade}) {
//   print("Student Information:");
//   print("Name: $name");
//   print("Age: $age");
//   print("Grade: $grade");
// }
// void main() {
//   student(name: "John Doe", age: 18, grade: "A");
// }


//2
// void studentData(String studentId, {String studentName, String studentClass}) {
//   print("Student ID: $studentId");
//   if (studentName != null && studentClass != null) {
//     print("Student Name: $studentName");
//     print("Student Class: $studentClass");
//   }
// }
// void main() {
//   studentData("12345");
//   studentData("67890", studentName: "John Doe", studentClass: "Grade 10");
// }


//3
// class Marks {
//   int math;
//   int science;
//   int history;
//   Marks(this.math, this.science, this.history);
// }
// class Student {
//   String name;
//   int age;
//   Marks marks;
//   Student(this.name, this.age, this.marks);
//   void displayInfo() {
//     print("Student Information:");
//     print("Name: $name");
//     print("Age: $age");
//     print("Marks:");
//     print("  Math: ${marks.math}");v
//     print("  Science: ${marks.science}");
//     print("  History: ${marks.history}");
//   }
// }
// void main() {
//   var studentMarks = Marks(95, 88, 78);
//   var student1 = Student("John Doe", 17, studentMarks);
//   student1.displayInfo();
// }


//4
// class Student {
//   String studentName;
//   double gpa;
//   Student(this.studentName, this.gpa);
//   void printInfo() {
//     print("Original Values:");
//     print("Student Name: $studentName");
//     print("GPA: $gpa");
//     studentName = "Alice Smith";
//     gpa = 3.9;
//     print("\nModified Values:");
//     print("Student Name: $studentName");
//     print("GPA: $gpa");
//   }
// }
// void main() {
//   var student = Student("John Doe", 3.5);
//  original and modified values
//   student.printInfo();
// }


//5
// class Student {
//   String studentId;
//   String studentName;
//   int studentAge;
//   String phoneNumber;
//   String university;
//   Student();
//   Student.withIdAndName(this.studentId, this.studentName);
//   Student.allAttributes(this.studentId, this.studentName, this.studentAge, this.phoneNumber, this.university);
//   Student.withNameAndAge(this.studentName, this.studentAge);
//   Student.withIdNameAndUniversity(this.studentId, this.studentName, this.university);
//   Student.withIdNameAndPhone(this.studentId, this.studentName, this.phoneNumber);
//   String getStudentId() {
//     return studentId;
//   }
//   void setStudentId(String id) {
//     studentId = id;
//   }
//   String getStudentName() {
//     return studentName;
//   }
//   void setStudentName(String name) {
//     studentName = name;
//   }
//   int getStudentAge() {
//     return studentAge;
//   }
//   void setStudentAge(int age) {
//     studentAge = age;
//   }
//   String getPhoneNumber() {
//     return phoneNumber;
//   }
//   void setPhoneNumber(String phone) {
//     phoneNumber = phone;
//   }
//   String getUniversity() {
//     return university;
//   }
//   void setUniversity(String uni) {
//     university = uni;
//   }
// }


//6
// class Student {
//   String studentId;
//   String studentName;
//   int studentAge;
//   String phoneNumber;
//   String university;
//   Student(this.studentId, this.studentName, this.studentAge, this.phoneNumber, this.university);
//   void printInfo() {
//     print("Student Information:");
//     print("ID: $studentId");
//     print("Name: $studentName");
//     print("Age: $studentAge");
//     print("Phone Number: $phoneNumber");
//     print("University: $university");
//     print("\n");
//   }
// }
// void main() {
//   List<Student> students = [
//     Student("101", "John Doe", 20, "555-1234", "XYZ University"),
//     Student("102", "Alice Smith", 22, "555-5678", "ABC University"),
//     Student("103", "Bob Johnson", 19, "555-9876", "DEF University"),
//   ];
//   for (var student in students) {
//     student.printInfo();
//   }
// }



//8
// class Restaurant {
//   Map<String, double> menuItems = {};
//   List<int> bookedTables = [];
//   List<Map<String, int>> customerOrders = [];
//   void addItemToMenu(String itemName, double itemPrice) {
//     menuItems[itemName] = itemPrice;
//   }
//   void bookTable(int tableNumber) {
//     if (!bookedTables.contains(tableNumber)) {
//       bookedTables.add(tableNumber);
//     }
//   }
//   void customerOrder(Map<String, int> order) {
//     customerOrders.add(order);
//   }
//   void printMenu() {
//     print("Menu Items:");
//     for (var item in menuItems.entries) {
//       print("${item.key}: \$${item.value.toStringAsFixed(2)}");
//     }
//   }
//   void printTableReservations() {
//     print("Booked Tables: $bookedTables");
//   }
//   void printCustomerOrders() {
//     print("Customer Orders:");
//     for (var order in customerOrders) {
//       print(order);
//     }
//   }
// }

// void main() {
//   Restaurant restaurant = Restaurant();
//   restaurant.addItemToMenu("Burger", 9.99);
//   restaurant.addItemToMenu("Pizza", 12.99);
//   restaurant.addItemToMenu("Salad", 5.99);

//   restaurant.bookTable(1);
//   restaurant.bookTable(3);
//   restaurant.customerOrder({"Burger": 2, "Salad": 1});
//   restaurant.customerOrder({"Pizza": 1});
//   restaurant.printMenu();
//   restaurant.printTableReservations();
//   restaurant.printCustomerOrders();
// }


//9
// class BankAccount {
//   int accountNumber;
//   double balance;
//   String dateOfOpening;
//   String customerName;
//   BankAccount(this.accountNumber, this.balance, this.dateOfOpening, this.customerName);
//   void deposit(double amount) {
//     if (amount > 0) {
//       balance += amount;
//       print("Deposited \$${amount.toStringAsFixed(2)} into account $accountNumber.");
//     } else {
//       print("Invalid deposit amount.");
//     }
//   }
//   void withdraw(double amount) {
//     if (amount > 0 && amount <= balance) {
//       balance -= amount;
//       print("Withdrawn \$${amount.toStringAsFixed(2)} from account $accountNumber.");
//     } else if (amount <= 0) {
//       print("Invalid withdrawal amount.");
//     } else {
//       print("Insufficient balance for withdrawal.");
//     }
//   }
//   double checkBalance() {
//     return balance;
//   }
// }
// void main() {
//   BankAccount account = BankAccount(12345, 1000.0, "2023-10-01", "John Doe");
//   account.deposit(500.0);
//   account.withdraw(200.0);
//   double currentBalance = account.checkBalance();
//   print("Current balance for account ${account.accountNumber}: \$${currentBalance.toStringAsFixed(2)}");
// }