import 'package:doctor_appointment/style/custom_colors.dart';
import 'package:doctor_appointment/style/dimens.dart';
import 'package:flutter/material.dart';

class AppointmentWidget extends StatelessWidget {

  String month_title;
  String month_day;
  String category;
  String complaint;
  String description;
  String start_time;
  String end_time;

  AppointmentWidget({
    this.month_title,
    this.month_day,
    this.category,
    this.complaint,
    this.description,
    this.start_time,
    this.end_time
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: CustomDimensions.mediumSpacing, horizontal: CustomDimensions.mediumSpacing),
      margin: EdgeInsets.only(bottom: CustomDimensions.defaultMargin),
      decoration: BoxDecoration(
        color: CustomColors.cardBackground,
        border: Border.all(color: Colors.grey.withOpacity(0.3) ),
        borderRadius: BorderRadius.circular(CustomDimensions.mediumSpacing)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: CustomDimensions.smallSpacing, horizontal:CustomDimensions.defaultMargin),
            decoration: BoxDecoration(
              color: CustomColors.cardSubItemBackground2,
              borderRadius: BorderRadius.circular(CustomDimensions.smallSpacing)
            ),
            child: Column(
              children: [
                Text("$month_title", style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 12.0, color: Colors.white) ),
                SizedBox(height: 4.0,),
                Text("$month_day", style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold, color: Colors.white))
              ]
            )
          ),
          SizedBox(width: 10.0,),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Chukwudi Duru", style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: 4.0,),
                  Text("Category: Eye, others", style: Theme.of(context).textTheme.bodyText1),
                  SizedBox(height: 4.0,),
                  Text("complaints", style: Theme.of(context).textTheme.bodyText1),
                  SizedBox(height: 4.0,),
                  Text("Lore ipsum dolor sit amet, consectetur", style: Theme.of(context).textTheme.bodyText1.copyWith(fontStyle: FontStyle.italic) ),
                  SizedBox(height: 10.0,),
                  Text("$start_time - $end_time", style: Theme.of(context).textTheme.bodyText1.copyWith() ),
                  SizedBox(height: 10.0,),
                  Container(color: Colors.grey.withOpacity(0.5), height: 1.0,),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Icon(Icons.message, size: 20.0),
                    Icon(Icons.call, size: 20.0, color: Colors.grey),
                    Icon(Icons.video_call, size: 20.0, color: Colors.grey),
                  ],)
                ],
              )
            ),
          )
        ],
      )
    );
  }
}