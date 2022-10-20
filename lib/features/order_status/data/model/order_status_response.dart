import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'order_status_response.g.dart';

@JsonSerializable()
class OrderStatusResponse  extends Equatable{
  @JsonKey(required: true,name: 'message')
  final String message;

  const OrderStatusResponse(this.message);

   factory OrderStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderStatusResponseToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [message];

}
