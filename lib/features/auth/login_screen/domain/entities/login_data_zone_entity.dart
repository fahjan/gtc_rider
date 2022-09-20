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
}
