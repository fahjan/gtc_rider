import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gtc_rider/core/exceptions/exceptions.dart';
import 'package:gtc_rider/core/exceptions/failures.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/entities/login_base_entity.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/usecases/login_usecase.dart';
import 'package:gtc_rider/utils/routing/app_routes.dart';

class LoginController extends GetxController {
  final LoginUseCase _loginUseCase;
  LoginController(this._loginUseCase);
  late TextEditingController emailControler;
  late TextEditingController passwordControler;
  String? riderFcmToken = GetStorage().read('rider_fcm_token');

  @override
  void onInit() {
    super.onInit();
    emailControler = TextEditingController();
    passwordControler = TextEditingController();
  }

  @override
  void dispose() {
    emailControler.dispose();
    passwordControler.dispose();
    super.dispose();
  }

  Future<LoginBaseEntity> loginRider() async {
    Either<Failure, LoginBaseEntity> data = await _loginUseCase(
        emailControler.value.text,
        passwordControler.value.text,
        riderFcmToken ?? '123');
    debugPrint('mohammed :${emailControler.value.text}');
    debugPrint('mohammed :${passwordControler.value.text}');
    debugPrint('mohammed :$riderFcmToken');
    if (data.isRight()) {
      Get.offAndToNamed(AppRoutes.home);
      Get.showSnackbar(const GetSnackBar(
        message: 'Login Success',
        duration: Duration(seconds: 4),
        margin: EdgeInsets.all(10),
        backgroundColor: Colors.lightBlue,
      ));
    }

    return await data.fold((l) => throw ServiceNotFoundException(),
        (loginBaseEntity) => loginBaseEntity);
  }
}
//String email,String password,String fcmToken