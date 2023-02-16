import 'dart:convert';

class UserDetails {
  String? email;
  String? password;
  String? uid;
  UserDetails({this.email, this.password, this.uid});
  Map<String, dynamic> toMap() {
    return <String, dynamic>{'email': email, 'password': password, 'uid': uid};
  }

  factory UserDetails.fromMap(Map<String, dynamic> map) {
    return UserDetails(
      email: map['email'] != null ? map['email'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
      uid: map['uid'] != null ? map['_uid'] as String : null,
    );
  }
  String toJson() => json.encode(toMap());
  factory UserDetails.fromJson(String source) =>
      UserDetails.fromMap(json.decode(source) as Map<String, dynamic>);
}
