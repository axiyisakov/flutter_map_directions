import 'package:equatable/equatable.dart';

class OsrmRouteResponse extends Equatable {
  final List<OsrmRoute> routes;

  const OsrmRouteResponse(this.routes);

  factory OsrmRouteResponse.fromJson(Map<String, dynamic> data) {
    return OsrmRouteResponse(
      List.of(data['routes']).map((e) => OsrmRoute.fromJson(e)).toList(),
    );
  }

  @override
  List<Object?> get props => [routes];
}

class OsrmRoute extends Equatable {
  final OsrmGeometry geometry;
  final double duration;
  final double distance;

  const OsrmRoute(this.geometry, this.duration, this.distance);

  factory OsrmRoute.fromJson(Map<String, dynamic> data) {
    return OsrmRoute(
      OsrmGeometry.fromJson(data['geometry']),
      data['duration'],
      data['distance'],
    );
  }

  @override
  List<Object?> get props => [geometry, duration, distance];
}

class OsrmGeometry extends Equatable {
  final List<OsrmCoordinate> coordinates;

  const OsrmGeometry(this.coordinates);

  OsrmGeometry.fromJson(Map<String, dynamic> data)
      : coordinates = (data['coordinates'] as List)
            .map((e) => OsrmCoordinate.fromJson(e))
            .toList();

  @override
  List<Object?> get props => [coordinates];
}

class OsrmCoordinate extends Equatable {
  final List<double> points;

  const OsrmCoordinate(this.points);

  OsrmCoordinate.fromJson(List<dynamic> data) : points = data.cast<double>();

  @override
  List<Object?> get props => [points];
}
