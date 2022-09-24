import 'package:equatable/equatable.dart';

class LoginDataZoneEntity extends Equatable {
  final int id;
  final String title;
  final String per_drop;
  final String per_hour;

  const LoginDataZoneEntity({
    required this.id,
    required this.title,
    required this.per_drop,
    required this.per_hour,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        title,
        per_drop,
        per_hour,
      ];

  factory LoginDataZoneEntity.fromJson(Map<String, dynamic>? json) {
    return LoginDataZoneEntity(
      id: json?['id'] as int,
      title: json?['title'] as String,
      per_drop: json?['per_drop'] as String,
      per_hour: json?['per_hour'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['per_drop'] = per_drop;
    data['per_hour'] = per_hour;
    return data;
  }
}
