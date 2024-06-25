import '6-password.dart';

class User extends Password {
  final String? name;
  final int? age;
  final double? height;
  final int? id;

  User({
    this.id,
    this.name,
    this.age,
    this.height,
    required String user_password,
  }) : super(password: user_password) {}

  String get user_password => password;

  set user_password(String value) {
    password = value;
  }

  toJson() {
    return {'id': id, 'name': name, 'age': age, 'height': height};
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height'],
        user_password: userJson['user_password']);
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${this.isValid()})';
  }
}

void main() {
  final djo = User(
      id: 1, name: "Djo", age: 25, height: 1.89, user_password: "Azert23defde");
  print('<===========Json=========>:');
  print('\n');
  print(djo.toJson());
  Map map = {
    'id': 3,
    'name': 'Youssef',
    'age': 26,
    'height': 1.9,
    'user_password': "Azert23defde"
  };
  final youssef = User.fromJson(map);
  print('\n');
  print('<===========Test1===========>:');
  print('\n');
  print(djo.toString());
  print(youssef.toString());
  print('\n');
  print('<===========Test2===========>:');
  print('\n');
  djo.user_password = "holberton98";
  youssef.user_password = "AZERfghn6789";
  print(djo.toString());
  print(youssef.toString());
}