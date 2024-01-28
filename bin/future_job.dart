Future<int> getWeatherForecast() {
  return Future.delayed(Duration(seconds: 3), () => 123);
}
Future<void> fetchWeatherForecast() async{
  print('start :: fetchWeatherForecast');
  var weatherForecast = await getWeatherForecast();
  print('Weather Forecast: $weatherForecast');
  // weatherForecast.then((value) => print('Weather Forecast: $value'));
  print('end :: fetchWeatherForecast');
}
main() async {
  print('start of main');
  await fetchWeatherForecast();
  print('end of main');
}