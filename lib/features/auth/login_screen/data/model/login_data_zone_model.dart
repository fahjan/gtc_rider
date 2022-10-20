import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'login_data_zone_model.g.dart';


@JsonSerializable()
class LoginDataZoneModel extends Equatable {
  @JsonKey()
  final int id;
  @JsonKey()
  final String title;
  @JsonKey()
  final String per_drop;
  @JsonKey()
  final String per_hour;

  const LoginDataZoneModel({
    required this.id,
    required this.title,
    required this.per_drop,
    required this.per_hour,
  });

  factory LoginDataZoneModel.fromJson(Map<String, dynamic> json) =>
      _$LoginDataZoneModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginDataZoneModelToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, title, per_drop, per_hour];
}
