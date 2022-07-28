import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class worker {
  dynamic? Location;
  dynamic? temp;
  dynamic? humidity;
  dynamic? air_speed;
  dynamic? description;
  dynamic? main;

  Future<void> ApiData() async {
    var url = Uri.parse(

        'https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=0d4a79d14538d2e822af7535e045a576'
    );
    Response response = await http.get(url) as Response;
    Map data = jsonDecode(response.body);print(data);
    Location = data["coord"]["lon"].toString();
   main=data["weather"][0]["main"].toString();
   temp = data["main"]["temp"].toString();
   humidity= data["main"]["humidity"].toString();
   air_speed= data["wind"]["speed"].toString();
   description = data["weather"][0]["description"].toString();
  }
}
