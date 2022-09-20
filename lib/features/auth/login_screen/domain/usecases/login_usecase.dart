import 'package:dartz/dartz.dart';
import 'package:gtc_rider/core/exceptions/failures.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/entities/login_base_entity.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/repositories/login_repo_domin.dart';

class LoginUseCase {
  LoginRepoDomain loginRepoDomain;
  LoginUseCase(this.loginRepoDomain);

  Future<Either<Failure,LoginBaseEntity>> call() async{
    return await loginRepoDomain.loginRider();
  }
}
