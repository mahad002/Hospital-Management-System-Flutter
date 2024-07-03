class UserModel {
  String? uid;
  String? username;
  String? email;
  String? firstname;
  String? secondname;
  String? guardianname;
  int? age;

  UserModel({
    this.uid,
    this.username,
    this.email,
    this.firstname,
    this.secondname,
    this.guardianname,
    this.age,
  });

  // recieve data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      username: map['username'],
      email: map['map'],
      firstname: map['firstname'],
      secondname: map['secondname'],
      guardianname: map['guardianname'],
      age: map['age'],
    );
  }

  //send data from server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'username': username,
      'email': email,
      'firstname': firstname,
      'secondname': secondname,
      'guardianname': guardianname,
      'age': age,
    };
  }
}
