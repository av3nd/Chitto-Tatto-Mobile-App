class UserEntity {
  final String? userId;
  final String? image;

  final String userName;
  final String email;
  final String password;

  UserEntity(
      {this.userId,
      this.image,
      required this.userName,
      required this.email,
      required this.password});
}
