import 'package:doctor_appointment/models/appointment.dart';
import 'package:doctor_appointment/models/appointment_sections.dart';
import 'package:hooks_riverpod/all.dart';

final all_appointments_provider = StateProvider<List<AppointmentSections>>((ref){

  var all = [
    AppointmentSections(
      title: "Today, Jan 18th",
      all_appointments:[
        Appointment(
          name: "Chukwudi Duru",
          category: "Eye, Others",
          complaints: "complaints",
          description: "Lore ipsum dolor sit amet, consecteur adipiscing elit...",
          from_time: "08:30am",
          to_time: "09:30am",
          month_title: "Jan",
          day: "18"
        ),
        Appointment(
          name: "Deji Oladepo",
          category: "Nose",
          complaints: "complaints",
          description: "Lore ipsum dolor sit amet, consecteur adipiscing elit...",
          from_time: "08:30am",
          to_time: "09:30am",
          month_title: "Jan",
          day: "18"
        ),
        Appointment(
          name: "Peter Ewanfo",
          category: "Nose",
          complaints: "complaints",
          description: "Lore ipsum dolor sit amet, consecteur adipiscing elit...",
          from_time: "08:30am",
          to_time: "09:30am",
          month_title: "Jan",
          day: "18"
        ),
        Appointment(
          name: "Peter Ewanfo",
          category: "Nose",
          complaints: "complaints",
          description: "Lore ipsum dolor sit amet, consecteur adipiscing elit...",
          from_time: "08:30am",
          to_time: "09:30am",
          month_title: "Jan",
          day: "18"
        ),
        Appointment(
          name: "Peter Ewanfo",
          category: "Nose",
          complaints: "complaints",
          description: "Lore ipsum dolor sit amet, consecteur adipiscing elit...",
          from_time: "08:30am",
          to_time: "09:30am",
          month_title: "Jan",
          day: "18"
        ),
        Appointment(
          name: "Peter Ewanfo",
          category: "Nose",
          complaints: "complaints",
          description: "Lore ipsum dolor sit amet, consecteur adipiscing elit...",
          from_time: "08:30am",
          to_time: "09:30am",
          month_title: "Jan",
          day: "18"
        ),
        Appointment(
          name: "Peter Ewanfo",
          category: "Nose",
          complaints: "complaints",
          description: "Lore ipsum dolor sit amet, consecteur adipiscing elit...",
          from_time: "08:30am",
          to_time: "09:30am",
          month_title: "Jan",
          day: "18"
        ),
        Appointment(
          name: "Peter Ewanfo",
          category: "Nose",
          complaints: "complaints",
          description: "Lore ipsum dolor sit amet, consecteur adipiscing elit...",
          from_time: "08:30am",
          to_time: "09:30am",
          month_title: "Jan",
          day: "18"
        ),
      ]
    ),
    AppointmentSections(
      title: "Tomorrow, Jan 19th",
      all_appointments:[
        Appointment(
          name: "Chukwudi Duru",
          category: "Eye, Others",
          complaints: "complaints",
          description: "Lore ipsum dolor sit amet, consecteur adipiscing elit...",
          from_time: "08:30am",
          to_time: "09:30am",
          month_title: "Jan",
          day: "18"
        ),
        Appointment(
          name: "Deji Oladepo",
          category: "Nose",
          complaints: "complaints",
          description: "Lore ipsum dolor sit amet, consecteur adipiscing elit...",
          from_time: "08:30am",
          to_time: "09:30am",
          month_title: "Jan",
          day: "18"
        ),
        Appointment(
          name: "Peter Ewanfo",
          category: "Nose",
          complaints: "complaints",
          description: "Lore ipsum dolor sit amet, consecteur adipiscing elit...",
          from_time: "08:30am",
          to_time: "09:30am",
          month_title: "Jan",
          day: "18"
        ),
        Appointment(
          name: "Peter Ewanfo",
          category: "Nose",
          complaints: "complaints",
          description: "Lore ipsum dolor sit amet, consecteur adipiscing elit...",
          from_time: "08:30am",
          to_time: "09:30am",
          month_title: "Jan",
          day: "18"
        ),
        Appointment(
          name: "Peter Ewanfo",
          category: "Nose",
          complaints: "complaints",
          description: "Lore ipsum dolor sit amet, consecteur adipiscing elit...",
          from_time: "08:30am",
          to_time: "09:30am",
          month_title: "Jan",
          day: "18"
        ),
        Appointment(
          name: "Peter Ewanfo",
          category: "Nose",
          complaints: "complaints",
          description: "Lore ipsum dolor sit amet, consecteur adipiscing elit...",
          from_time: "08:30am",
          to_time: "09:30am",
          month_title: "Jan",
          day: "18"
        ),
        Appointment(
          name: "Peter Ewanfo",
          category: "Nose",
          complaints: "complaints",
          description: "Lore ipsum dolor sit amet, consecteur adipiscing elit...",
          from_time: "08:30am",
          to_time: "09:30am",
          month_title: "Jan",
          day: "18"
        ),
        Appointment(
          name: "Peter Ewanfo",
          category: "Nose",
          complaints: "complaints",
          description: "Lore ipsum dolor sit amet, consecteur adipiscing elit...",
          from_time: "08:30am",
          to_time: "09:30am",
          month_title: "Jan",
          day: "18"
        ),
      ]
    ),

  ];

  return all;

});