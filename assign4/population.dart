void main() {
  Map<String, List> Contries = {
    "spain": [985555, 999888],
    "italy": [89121, 2323288],
    "belgium": [178787, 119891],
    "albania": [1256565, 111515151],
    "germany": [4425425, 603544],
  };
  var Densities =
      Contries.entries.map((e) => [e.key, e.value[0] / e.value[1]]).toList();
  Densities.sort((a, b) => b[1].compareTo(a[1]));
  var TopContries = Densities.sublist(0, 5);
  print('Top 5 countries by population density:');
  for (final country in TopContries) {
    print('${country[0]} : with density :  ${country[1]}');
  }
}
