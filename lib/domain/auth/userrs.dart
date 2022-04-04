// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class Users {
//   final String? uid;
//   final String name, email, password,imgPath;
//   final bool isDarkMode;
//
//   Users({required this.imgPath,required this.isDarkMode, this.uid, required this.name, required this.email, required this.password,});
//
//   // Users.fromJson(Map<String, dynamic> json, this.uid, this.name, this.email, this.password)
//   // {
//   //   uid = json['uid'];
//   //   name = json['name'];
//   //   email = json['email'];
//   //   password = json['password'];
//   // }
//
//   Map<String, dynamic> toMap() {
//     return {
//       'uid': uid,
//       'name': name,
//       'email': email,
//       'password': password
//     };
//   }

  // Users.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> doc)
  //     : uid = doc.id,
  //       name = doc.data()!["name"],
  //       email = doc.data()!["email"],
  //       password = doc.data()!["password"];
// }

        // employeeTraits = doc.data()?["employeeTraits"] == null ? null : doc.data()?["employeeTraits"].cast<String>();

  // static Users ss(Map<String,dynamic> map){
  //   return Users(uid: map['uid'], name: map['name'], email: map['email'], password: map['password']);
  // }

//
// class Employee {
//   final String? id;
//   final String name;
//
//   final List<String>? employeeTraits;
//   Employee(
//       {this.id,
//         required this.name,
//         required this.age,
//         required this.salary,
//         required this.address,
//         this.employeeTraits});
//
//   Map<String, dynamic> toMap() {
//     return {
//       'name': name,
//       'age': age,
//       'salary': salary,
//       'address': address.toMap(),
//       'employeeTraits': employeeTraits
//     };
//   }
//
//   Employee.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> doc)
//       : id = doc.id,
//         name = doc.data()!["name"],
//         age = doc.data()!["age"],
//         salary = doc.data()!["salary"],
//         address = Address.fromMap(doc.data()!["address"]),
//         employeeTraits = doc.data()?["employeeTraits"] == null ? null : doc.data()?["employeeTraits"].cast<String>();
// }
