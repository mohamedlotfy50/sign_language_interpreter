class UserModel {
   final String uid;
   String imagePath, username, phone, email, password;


  UserModel({
    this.imagePath ='',
     required this.uid,
     this.username='',
    this.phone='',
     this.email='',
     this.password='',

  });
  factory UserModel.fromMap(Map<String ,dynamic>map) {
    return UserModel(
      imagePath: map['image']??'',
      phone: map['phone']??'',
      uid: map['uid'],
      email: map['email'],
      username: map['username'],
      password: map['password'],
    );
  }

  Map<String, dynamic> toMap(){
    return {
      'username': username,
      'email': email,
      'password': password,
      'uid': uid,
      'image':imagePath,
      'phone':phone,
    };

  }
   void printUser(){
     print({
       'username': username,
       'email': email,
       'password': password,
       'uid': uid,
       'image':imagePath,
       'phone':phone,
     });
   }

 // static List<UserModel> fromMapList(List<Map> mapList) {
 //    final List<UserModel> l = [];
 //    mapList.forEach((element) {
 //      l.add(UserModel.fromMap(element as Map<String,dynamic>));
 //    });
 //    return l;
 //  }

}