import 'package:equatable/equatable.dart';

class DirectionCoordinate extends Equatable {
  final double latitude;
  final double longitude;

  const DirectionCoordinate(this.latitude, this.longitude);

  @override
  List<Object?> get props => [latitude, longitude];
}
