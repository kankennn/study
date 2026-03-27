class User{
  final int id;
  final String username;
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String phone;
  final int userStatus;
  User({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.phone,
    required this.userStatus,

  });
  Map<String, dynamic> toJson(){
    return{
      'id': id,
      'username': username,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
      'phone': phone,
      'userStatus': userStatus,
    };
  }
  factory User.fromJson(Map<String, dynamic> json){
    return User(
      id: json['id'] as int,
      username: json['username'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      phone: json['phone'] as String,
      userStatus: json['userStatus'] as int,
    );
  }
}