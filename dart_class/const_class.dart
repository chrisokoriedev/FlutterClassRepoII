void main() {
  double distanceMile = 1.5;
  const toKm = 1.609;
  double distanceKm = distanceMile * toKm;
  print('$distanceMile Mile =  $distanceKm Km');
  distanceKm = distanceMile * toKm;
  print("distanceKm: $distanceKm");

  final dateTime = DateTime.now();
  print("${dateTime.hour}:${dateTime.minute}:${dateTime.second}");



}
