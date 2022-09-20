import 'package:flutter/material.dart';
import 'package:gtc_rider/core/exceptions/exceptions.dart';
import 'package:gtc_rider/features/auth/login_screen/data/datasource/remotedatasorce/remote_login_data_source.dart';
import 'package:gtc_rider/features/auth/login_screen/data/model/login_base_model.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/entities/login_base_entity.dart';
import 'package:gtc_rider/core/exceptions/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/mapper/login_base_mapper.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/repositories/login_repo_domin.dart';

class LoginRepoData extends LoginRepoDomain {
  RemoteLoginDataSource remoteLoginDataSource;
  LoginRepoData(this.remoteLoginDataSource);

  @override
  Future<Either<Failure, LoginBaseEntity>> loginRider() async{
    try {
      LoginBaseModel loginBaseModel = await remoteLoginDataSource.loginRider('rider@haiia.com', '123456', 'onesignal_id');
      debugPrint(loginBaseModel.data.email);
      debugPrint(loginBaseModel.data.zone.title);

      return right(loginBaseModel.toEntity()); // left from dartz package
    } on ServiceNotFoundException {
      return left(ServiceNotFoundFailure()); // right from dartz package
    }
  }
}
