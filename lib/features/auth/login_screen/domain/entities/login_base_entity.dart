import 'package:equatable/equatable.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/entities/login_data_entity.dart';

class LoginBaseEntity extends Equatable {
  final LoginDataEntity data;

  const LoginBaseEntity(this.data);
  
  @override
  List<Object?> get props => [data];
}
