import 'package:json_annotation/json_annotation.dart';
part 'model_profile.g.dart';

@JsonSerializable()
class ModelProfile {
  final int id;
  final String email;
  final String nickname;

  ModelProfile({required this.id, required this.email, required this.nickname});

  factory ModelProfile.fromJson(Map<String, dynamic> json) =>
      _$ModelProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ModelProfileToJson(this);
}
