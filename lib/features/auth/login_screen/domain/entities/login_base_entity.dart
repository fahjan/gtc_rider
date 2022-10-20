import 'package:equatable/equatable.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/entities/login_data_entity.dart';

class LoginBaseEntity extends Equatable {
   LoginDataEntity? dataa;

   LoginBaseEntity({required this.dataa});
    String ? error;

  
  @override
  List<Object?> get props => [dataa];

  factory LoginBaseEntity.fromJson(Map<String, dynamic>? json) {
    return LoginBaseEntity(
         dataa :LoginDataEntity.fromJson((json?['data'])),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['data'] = dataa?.toJson();
    return data;
  }

   LoginBaseEntity.withError(String errorMessage) {
        error = errorMessage;
  }
}
