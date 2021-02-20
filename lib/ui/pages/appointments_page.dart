import 'package:doctor_appointment/custom_widgets/appointment_section_widget.dart';
import 'package:doctor_appointment/custom_widgets/appointment_widget.dart';
import 'package:doctor_appointment/data/appointments.dart';
import 'package:doctor_appointment/models/appointment_sections.dart';
import 'package:doctor_appointment/style/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/all.dart';

class AppointmentPage extends StatefulWidget {
  @override
  _AppointmentPageState createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> with SingleTickerProviderStateMixin {

  TabController _controller;
  
  @override
  void initState() { 
    super.initState();

    _controller = TabController(length: 4, vsync: this);
    
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Consumer(
        builder: (BuildContext context, T Function<T>(ProviderBase<Object, T>) watch, Widget child) {

          List<AppointmentSections> all_appointments = watch(all_appointments_provider).state;

          return Column(
            children: [
              TabBar(
                  controller: _controller,
                  labelColor: CustomColors.selectedButtonColor,
                  labelStyle: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 16.0),
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.transparent,
                  isScrollable: true,
                  tabs: [
                    Text(
                      "Upcoming Appointments",
                    ),
                    Tab(
                      text: "Past Appointments",
                    ),
                    Tab(
                      text: "Recent Appointments",
                    ),
                    Tab(
                      text: "Closed Appointments",
                    ),
                  ],
                ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _controller,
                    children: [
                      CustomScrollView(
                        physics: BouncingScrollPhysics(),
                        slivers: [
                          AppointmentSection(title: all_appointments[0].title, all_appointments: all_appointments[0].all_appointments),
                          AppointmentSection(title: all_appointments[1].title, all_appointments: all_appointments[0].all_appointments),
                        ],
                      ),
                      CustomScrollView(
                        physics: BouncingScrollPhysics(),
                        slivers: [
                          AppointmentSection(title: all_appointments[0].title, all_appointments: all_appointments[0].all_appointments),
                          AppointmentSection(title: all_appointments[1].title, all_appointments: all_appointments[0].all_appointments),
                        ],
                      ),
                      SizedBox(),
                      SizedBox(),
                    ],
                  ),
                ),
              ),
            ],
          );

        },
      )
    );
    
  }
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

}