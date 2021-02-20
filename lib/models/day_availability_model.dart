import 'package:doctor_appointment/models/single_available_time_model.dart';

class DayAvailabilityModel{
  
  String day_title;
  String start_time;
  String end_time;
  List<SingleAvailableTimeModel> all_time;

  DayAvailabilityModel({
    this.day_title,
    this.start_time,
    this.end_time,
    this.all_time
  });

}