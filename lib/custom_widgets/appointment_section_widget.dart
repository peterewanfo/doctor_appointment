import 'package:doctor_appointment/custom_widgets/appointment_widget.dart';
import 'package:doctor_appointment/models/appointment.dart';
import 'package:doctor_appointment/style/dimens.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class AppointmentSection extends StatelessWidget {
  final String title;
  final List<Appointment> all_appointments;

  AppointmentSection({this.title, this.all_appointments});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
        padding: EdgeInsets.all(10.0),
        sliver: MultiSliver(
          pushPinnedChildren: true,
                children: [
                  SliverPinnedHeader(
                    child: Center(
                        child: Container(
                            padding:
                                EdgeInsets.all(CustomDimensions.smallSpacing),
                            child: Text("$title",
                                style: Theme.of(context).textTheme.bodyText1))),
                  ),
                  SliverClip(
                      child: MultiSliver(
                    children: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return AppointmentWidget(
                              month_title:
                                  this.all_appointments[index].month_title,
                              month_day: this.all_appointments[index].day,
                              start_time:
                                  this.all_appointments[index].from_time,
                              end_time: this.all_appointments[index].to_time,
                            );
                          },
                          childCount: all_appointments.length,
                        ),
                      )
                    ],
                  ))
                ],
        ));
  }
}
