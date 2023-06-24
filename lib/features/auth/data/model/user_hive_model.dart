import 'package:chitto_tatto/config/constants/hive_table_constants.dart';
import 'package:chitto_tatto/features/auth/domain/entity/user_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'user_hive_model.g.dart';

final userHiveModelProvider = Provider(
  (ref) => UserHiveModel.empty(),
);

@HiveType(typeId: HiveTableConstant.userTableId)
class UserHiveModel {
  @HiveField(0)
  final String? userId;

  @HiveField(1)
  final String userName;

  @HiveField(2)
  final String email;

  @HiveField(3)
  final String password;

  // TDD test driven development suggest that we should write code that generates
  // error

  UserHiveModel.empty()
      : this(userId: '', userName: '', email: '', password: '');

  UserHiveModel({
    String? userId,
    required this.userName,
    required this.email,
    required this.password,
  }) : userId = userId ?? const Uuid().v4();

  UserEntity toEntity() => UserEntity(
      userId: userId, userName: userName, email: email, password: password);

  UserHiveModel toHiveModel(UserEntity? entity) => UserHiveModel(
      userName: entity!.userName,
      email: entity.email,
      password: entity.password);

  List<UserEntity> toEntityList(List<UserHiveModel> models) =>
      models.map((model) => model.toEntity()).toList();

  @override
  String toString() {
    return 'userId: $userId, userName: $userName';
  }
}
