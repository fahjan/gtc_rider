import 'package:equatable/equatable.dart';
import 'package:gtc_rider/features/auth/login_screen/data/model/login_data_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'login_base_model.g.dart';


@JsonSerializable()
class LoginBaseModel extends Equatable {
  @JsonKey(required: true,name: 'data')
  final LoginDataModel data;

  const LoginBaseModel({required this.data});

  factory LoginBaseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginBaseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginBaseModelToJson(this);


  @override
  bool get stringify => true;

  @override
  List<Object?> get props => throw UnimplementedError();
}
