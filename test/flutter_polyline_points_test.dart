import 'package:flutter_polyline_points_plus/flutter_polyline_points_plus.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('get list of coordinates from two geographical positions', () async {
    final polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        "YOUR_API_KEY", const PointLatLng(6.5212402, 3.3679965),
        const PointLatLng(6.595680, 3.337030),
        travelMode: TravelMode.driving);
    assert(result.points.isNotEmpty == true);
  });

  test('get list of coordinates from an encoded String', () {
    print("Writing a test is very easy");
    final polylinePoints = PolylinePoints();
    List<PointLatLng> points =
        polylinePoints.decodePolyline("_p~iF~ps|U_ulLnnqC_mqNvxq`@");
    print("Answer ---- ");
    print(points);
    assert(points.isNotEmpty);
  });
}
