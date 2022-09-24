import 'package:equatable/equatable.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/entities/login_data_zone_entity.dart';

class LoginDataEntity extends Equatable {
  final int id;

  final String name;
  final String email;
  final String mobile;
  final LoginDataZoneEntity zone;
  final String api_token;
  final String rider_status;
  final String you_ride;

  const LoginDataEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.mobile,
    required this.zone,
    required this.api_token,
    required this.rider_status,
    required this.you_ride,
  });

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

  factory LoginDataEntity.fromJson(Map<String, dynamic>? json) {
    return LoginDataEntity(
      id: json?['id'] as int,
      api_token: json?['api_token'] as String,
      name: json?['name'] as String,
      mobile: json?['mobile'] as String,
      rider_status: json?['rider_status'] as String,
      you_ride: json?['you_ride'] as String,
      zone:  LoginDataZoneEntity.fromJson((json?['zone'])),
      email: json?['email'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['api_token'] = api_token;
    data['name'] = name;
    data['mobile'] = mobile;
    data['rider_status'] = rider_status;
    data['you_ride'] = you_ride;
    data['email'] = email;
    data['zone'] = zone.toJson();
    return data;
  }
}
