import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtc_rider/core/exceptions/exceptions.dart';
import 'package:gtc_rider/core/exceptions/failures.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/entities/login_base_entity.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/usecases/login_usecase.dart';

class LoginController extends GetxController {
  final LoginUseCase _loginUseCase;
  LoginController(this._loginUseCase);
  late TextEditingController idNumberControler;
  late TextEditingController passwordControler;

  @override
  void onInit() {
    super.onInit();
    idNumberControler = TextEditingController();
    passwordControler = TextEditingController();
  }

  @override
  void dispose() {
    idNumberControler.dispose();
    passwordControler.dispose();
    super.dispose();
  }

  Future<LoginBaseEntity> loginRider() async {
    Either<Failure, LoginBaseEntity> data = await _loginUseCase();
    return await data.fold((l) => throw ServiceNotFoundException(), (r) => r);
  }
}
