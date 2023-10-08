import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final Tokens tokens;
  final User user;

  UserModel({
    required this.tokens,
    required this.user,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable()
class Tokens {
  @JsonKey(name: 'accessToken')
  final String accessToken;
  @JsonKey(name: 'refreshToken')
  final String refreshToken;

  Tokens({
    required this.accessToken,
    required this.refreshToken,
  });

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);
  Map<String, dynamic> toJson() => _$TokensToJson(this);
}

@HiveType(typeId: 1)
@JsonSerializable()
class User extends Equatable {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String email;
  @HiveField(2)
  final String nickname;

  const User({
    required this.id,
    required this.email,
    required this.nickname,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => <Object>[
        id,
        email,
        nickname,
      ];
}
