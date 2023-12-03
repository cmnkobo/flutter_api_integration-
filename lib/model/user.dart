import 'package:apicall/model/user_dob.dart';
import 'package:apicall/model/user_location.dart';
import 'package:apicall/model/user_name.dart';
import 'package:apicall/model/user_picture.dart';

class User {
  final String gender;
  final String phone;
  final String email;
  final String cell;
  final String nat;
  final UserName name;
  final UserDob dob;
  final UserLocation location;
  final UserPicture picture;

  User({
    required this.gender,
    required this.phone,
    required this.email,
    required this.cell,
    required this.nat,
    required this.name,
    required this.dob,
    required this.location,
    required this.picture,
  });

  factory User.fromMap(Map<String, dynamic> e) {
    final name = UserName.fromMap(e['name']);

    final dob = UserDob.fromMap(e['dob']);

    final location = UserLocation.fromMap(e['location']);

    final picture = UserPicture.fromMap(e['picture']);

    return User(
      cell: e['cell'],
      email: e['email'],
      nat: e['nat'],
      phone: e['phone'],
      gender: e['gender'],
      name: name,
      dob: dob,
      location: location,
      picture: picture,
    );
  }

  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }
}
