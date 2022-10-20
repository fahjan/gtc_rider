import 'package:gtc_rider/core/exceptions/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/entities/login_base_entity.dart';

abstract class LoginRepoDomain{
      Future<Either<Failure,LoginBaseEntity>> loginRider(String email,String password,String fcmToken);

}