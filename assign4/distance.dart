import 'dart:math';

void main() {
  Map<String, List<double>> cityCoordinates = {
    "balochistan": [10.1933896, 16.5950172],
    "Lahore": [66.4832209, 80.0542048],
    "karachi": [40.1800523, 66.8786047],
    "pindi": [11.977545, 34.2852867],
    "multan": [01.6163723, 22.8059243]
  };

  String start = "balochistan";
  String end = "karachi";

  num shortestDistance =
      distance(cityCoordinates[start]!, cityCoordinates[end]!);
  print(
      "The Shortest Distance from $start to $end is: ${shortestDistance.toStringAsFixed(3)} Km");
}

num distance(List<num> coord1, List<num> coord2) {
  const earthRadius = 6378;
  num lat1 = coord1[0] * pi / 180.0;
  num long1 = coord1[1] * pi / 180.0;
  num lat2 = coord2[0] * pi / 180.0;
  num long2 = coord2[1] * pi / 180.0;

  num dlat = lat2 - lat1;
  num dlong = long2 - long1;

  num sn = sin(dlat / 2) * sin(dlat / 2) +
      cos(lat1) * cos(lat2) * sin(dlong / 2) * sin(dlong / 2);
  num tn = 2 * atan2(sqrt(sn), sqrt(1 - sn));
  num distance = earthRadius * tn;
  return distance;
}
