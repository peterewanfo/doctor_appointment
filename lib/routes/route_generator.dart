
import 'package:doctor_appointment/routes/routes.dart';
import 'package:doctor_appointment/ui/appointments_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator{
  
  static Route<dynamic> generateRoute(RouteSettings settings){

    final args = settings.arguments;

    switch(settings.name){

      case Routes.splash:
        return CupertinoPageRoute(builder: (context) => AppointmentsScreen(),);
        break;
      default:
        break;
    }
  }
}