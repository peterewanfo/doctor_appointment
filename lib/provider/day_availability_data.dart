
import 'package:doctor_appointment/models/day_availability_model.dart';
import 'package:doctor_appointment/models/single_available_time_model.dart';
import 'package:hooks_riverpod/all.dart';

final selected_category_provider = StateProvider<List<DayAvailabilityModel>>((ref){
  return [
    DayAvailabilityModel(
      day_title: "Morning",
      start_time: "8:00AM",
      end_time: "12:00PM",
      all_time: [
        SingleAvailableTimeModel(
          time_title: "8:00AM",
          is_selected: true,
        ),
        SingleAvailableTimeModel(
          time_title: "8:00AM",
          is_selected: false,
        ),
        SingleAvailableTimeModel(
          time_title: "8:30AM",
          is_selected: true,
        ),
        SingleAvailableTimeModel(
          time_title: "9:00AM",
          is_selected: false,
        ),
        SingleAvailableTimeModel(
          time_title: "9:30AM",
          is_selected: true,
        ),
        SingleAvailableTimeModel(
          time_title: "10:00AM",
          is_selected: true,
        ),
        SingleAvailableTimeModel(
          time_title: "10:30AM",
          is_selected: false,
        ),
        SingleAvailableTimeModel(
          time_title: "11:30AM",
          is_selected: false,
        ),
        SingleAvailableTimeModel(
          time_title: "12:00PM",
          is_selected: true,
        ),
      ]
    ),
    DayAvailabilityModel(
      day_title: "Afternoon",
      start_time: "8:00AM",
      end_time: "12:00PM",
      all_time: [
        SingleAvailableTimeModel(
          time_title: "8:00AM",
          is_selected: true,
        ),
        SingleAvailableTimeModel(
          time_title: "8:00AM",
          is_selected: false,
        ),
        SingleAvailableTimeModel(
          time_title: "8:30AM",
          is_selected: true,
        ),
        SingleAvailableTimeModel(
          time_title: "9:00AM",
          is_selected: false,
        ),
        SingleAvailableTimeModel(
          time_title: "9:30AM",
          is_selected: true,
        ),
        SingleAvailableTimeModel(
          time_title: "10:00AM",
          is_selected: true,
        ),
        SingleAvailableTimeModel(
          time_title: "10:30AM",
          is_selected: false,
        ),
        SingleAvailableTimeModel(
          time_title: "11:30AM",
          is_selected: false,
        ),
        SingleAvailableTimeModel(
          time_title: "12:00PM",
          is_selected: true,
        ),
      ]
    ),
    DayAvailabilityModel(
      day_title: "Evening",
      start_time: "8:00AM",
      end_time: "12:00PM",
      all_time: [
        SingleAvailableTimeModel(
          time_title: "8:00AM",
          is_selected: true,
        ),
        SingleAvailableTimeModel(
          time_title: "8:00AM",
          is_selected: false,
        ),
        SingleAvailableTimeModel(
          time_title: "8:30AM",
          is_selected: true,
        ),
        SingleAvailableTimeModel(
          time_title: "9:00AM",
          is_selected: false,
        ),
        SingleAvailableTimeModel(
          time_title: "9:30AM",
          is_selected: true,
        ),
        SingleAvailableTimeModel(
          time_title: "10:00AM",
          is_selected: true,
        ),
        SingleAvailableTimeModel(
          time_title: "10:30AM",
          is_selected: false,
        ),
        SingleAvailableTimeModel(
          time_title: "11:30AM",
          is_selected: false,
        ),
        SingleAvailableTimeModel(
          time_title: "12:00PM",
          is_selected: true,
        ),
      ]
    ),
    DayAvailabilityModel(
      day_title: "Night",
      start_time: "8:00AM",
      end_time: "12:00PM",
      all_time: [
        SingleAvailableTimeModel(
          time_title: "8:00AM",
          is_selected: true,
        ),
        SingleAvailableTimeModel(
          time_title: "8:00AM",
          is_selected: false,
        ),
        SingleAvailableTimeModel(
          time_title: "8:30AM",
          is_selected: true,
        ),
        SingleAvailableTimeModel(
          time_title: "9:00AM",
          is_selected: false,
        ),
        SingleAvailableTimeModel(
          time_title: "9:30AM",
          is_selected: true,
        ),
        SingleAvailableTimeModel(
          time_title: "10:00AM",
          is_selected: true,
        ),
        SingleAvailableTimeModel(
          time_title: "10:30AM",
          is_selected: false,
        ),
        SingleAvailableTimeModel(
          time_title: "11:30AM",
          is_selected: false,
        ),
        SingleAvailableTimeModel(
          time_title: "12:00PM",
          is_selected: true,
        ),
      ]
    ),
  ];
});