class User {
  final String userId;
  final String name;
  final String type;
  final String password;

  User({this.userId, this.name, this.type, this.password});

  Map<String, dynamic> toMap() {
    return {'userId': userId, 'name': name, 'type': type, 'password': password};
  }

  User.fromFirestore(Map<String, dynamic> firestore)
      : userId = firestore['userId'],
        name = firestore['name'],
        type = firestore['type'],
        password = firestore['password'];
}
