import 'package:api_calling_app/worker.dart';
import 'package:flutter/material.dart';

//worker Myworker = worker();

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
          String? finalLocation;
          String? finalTemp;
          String? finalMain;
          String? finalDesc;
          String? finalHumidity;
          String? finalAirSpeed;

      getApiData()async{
        worker Myworker = worker();
        await Myworker.ApiData();
        setState(() {
          finalLocation =Myworker.Location;
          finalTemp =Myworker.temp;
          finalMain= Myworker.main;
          finalDesc= Myworker.description;
          finalHumidity= Myworker.humidity;
          finalAirSpeed= Myworker.air_speed;
        });
      }


  @override
  void initState() {
    getApiData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(
        'Location:${finalLocation}'
        '\nHumidity:${finalHumidity}'
        '\nAirSpeed:${finalAirSpeed}'
        '\nDescription:${finalDesc}'
        '\nMain:${finalMain}'
        '\nTempreture:${finalTemp}'

    ),
    );
  }
}
