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
}
