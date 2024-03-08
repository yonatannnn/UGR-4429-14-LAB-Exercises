import 'dart:io';
import 'dart:async';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'dart:convert';
//Exercise 1
Future<String> fetchQuote() async {
  await Future.delayed(Duration(seconds: 2));
  List<String> quotes = [
    "The only way to do great work is to love what you do. – Steve Jobs",
    "Innovation distinguishes between a leader and a follower. – Steve Jobs",
    "Your time is limited, don't waste it living someone else's life. – Steve Jobs"
  ];
  return quotes[Random().nextInt(quotes.length)];
}

//Exercise 2
Future<void> downloadFile(String url, String savePath) async {
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    File file = File(savePath);
    await file.writeAsBytes(response.bodyBytes);
    print("File downloaded successfully.");
  } else {
    print("Failed to download file: ${response.statusCode}");
  }
}

//Exercise 3
Future<List<String>> fetchDataFromDatabase() async {
  await Future.delayed(Duration(seconds: 2));
  return ["Data 1", "Data 2", "Data 3"];
}


//Exercise 4
Future<Map<String, dynamic>> fetchWeatherData(String city) async {
  String apiKey = "b3f7f8c3248045f72ce8f76fbf958930";
  String apiUrl = "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey";
  var response = await http.get(Uri.parse(apiUrl));
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception("Failed to fetch weather data: ${response.statusCode}");
  }
}







void main() async {
  //Exercise 1
  print("Fetching quote...");
  String quote = await fetchQuote();
  print("Quote: $quote");


  //Exercise 2
  String url = "https://example.com/file.zip";
  String savePath = "downloaded_file.zip";
  await downloadFile(url, savePath);

  //Exercise 3
  print("Loading data from database...");
  List<String> data = await fetchDataFromDatabase();
  print("Data loaded: $data");

  //Exercise 4
  String city = "New York";
  try {
    Map<String, dynamic> weatherData = await fetchWeatherData(city);
    double temperature = (weatherData['main']['temp'] - 273.15);
    String weatherDescription = weatherData['weather'][0]['description'];
    print("Current temperature in $city: ${temperature.toStringAsFixed(2)}°C");
    print("Weather condition: $weatherDescription");
  } catch (e) {
    print("Error: $e");
  }
}
