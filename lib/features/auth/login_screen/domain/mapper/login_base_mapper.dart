import 'package:gtc_rider/features/auth/login_screen/data/model/login_base_model.dart';
import 'package:gtc_rider/features/auth/login_screen/data/model/login_data_model.dart';
import 'package:gtc_rider/features/auth/login_screen/data/model/login_data_zone_model.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/entities/login_base_entity.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/entities/login_data_entity.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/entities/login_data_zone_entity.dart';

extension LoginBaseModelToLoginBaseEntity on LoginBaseModel {
  LoginBaseEntity toEntity() {
    return LoginBaseEntity(
      dataa: data!.toDataEntity(),
    );
  }
}

extension LoginDataModelToLoginDataEntity on LoginDataModel {
  LoginDataEntity toDataEntity() {
    return LoginDataEntity(
      id: id,
      name: name,
      email: email,
      mobile: mobile,
      zone: zone.toZoneEntity(),
      api_token: api_token,
      rider_status: rider_status,
      you_ride: you_ride,
    );
  }
}

extension LoginDataZoneModelToLoginDataZoneEntity on LoginDataZoneModel {
  LoginDataZoneEntity toZoneEntity() {
    return LoginDataZoneEntity(
      id: id,
      title: title,
      per_drop: per_drop,
      per_hour: per_hour,
    );
  }
}
