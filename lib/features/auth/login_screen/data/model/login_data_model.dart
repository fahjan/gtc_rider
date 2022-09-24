import 'package:equatable/equatable.dart';
import 'package:gtc_rider/features/auth/login_screen/data/model/login_data_zone_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'login_data_model.g.dart';


@JsonSerializable()
class LoginDataModel extends Equatable {
  @JsonKey()
  final int id;
  @JsonKey()
  final String name;
  @JsonKey()
  final String email;
  @JsonKey()
  final String mobile;
  @JsonKey(required: true, name: 'zone')
  final LoginDataZoneModel zone;
  @JsonKey()
  final String api_token;
  @JsonKey()
  final String rider_status;
  @JsonKey()
  final String you_ride;

  const LoginDataModel({
    required this.id,
    required this.name,
    required this.email,
    required this.mobile,
    required this.zone,
    required this.api_token,
    required this.rider_status,
    required this.you_ride,
  });

  factory LoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginDataModelToJson(this);

  @override
  bool get stringify => true;

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
        email,
        mobile,
        zone,
        api_token,
        rider_status,
        you_ride,
      ];
}
