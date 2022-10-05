import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gtc_rider/core/config/constants.dart';
import 'package:gtc_rider/core/exceptions/exceptions.dart';
import 'package:gtc_rider/core/exceptions/failures.dart';
import 'package:gtc_rider/core/local_storage.dart';
import 'package:gtc_rider/features/auth/login_screen/data/datasource/localdatasource/local_login_data_source.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/entities/login_base_entity.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/usecases/login_usecase.dart';
import 'package:gtc_rider/utils/routing/app_routes.dart';

class LoginController extends GetxController {
  final LoginUseCase _loginUseCase;
  LoginController(this._loginUseCase);
  late TextEditingController emailControler;
  late TextEditingController passwordControler;
  String? riderFcmToken;

  @override
  void onInit() {
    super.onInit();
    riderFcmToken = GetStorage().read('rider_fcm_token');
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
    Either<Failure, LoginBaseEntity>? data;
    if (riderFcmToken != null) {
      data = await _loginUseCase(emailControler.value.text,
          passwordControler.value.text, riderFcmToken!);
      debugPrint('mohammed :${emailControler.value.text}');
      debugPrint('mohammed :${passwordControler.value.text}');
      debugPrint('mohammed :$riderFcmToken');
      if (data.isRight()) {
        await LocaleLoginDataSource().writeToLocalStorageLoginRiderInfo(
            Constants.loginRiderInfoKey,
            data.fold((l) => throw Exception(), (r) => r));
        if (data.fold((l) => throw Exception(), (r) {
          debugPrint('mohammed :${r.error}');
          return r.error != null;
        })) {
          Get.showSnackbar(const GetSnackBar(
            message: 'Login Faild ',
            duration: Duration(seconds: 4),
            margin: EdgeInsets.all(10),
            backgroundColor: Colors.lightBlue,
          ));
        } else {
          Get.offAndToNamed(AppRoutes.home);
          Get.showSnackbar(const GetSnackBar(
            message: 'Login Success',
            duration: Duration(seconds: 4),
            margin: EdgeInsets.all(10),
            backgroundColor: Colors.lightBlue,
          ));
        }
      }

      return await data.fold((l) => throw ServiceNotFoundException(),
          (loginBaseEntity) => loginBaseEntity);
    } else {
      Get.showSnackbar(const GetSnackBar(
        message: 'Login Faild , Fcm Token Invaild',
        duration: Duration(seconds: 4),
        margin: EdgeInsets.all(10),
        backgroundColor: Colors.lightBlue,
      ));
      return await data!.fold((l) => throw ServiceNotFoundException(),
          (loginBaseEntity) => loginBaseEntity);
    }
  }
}
