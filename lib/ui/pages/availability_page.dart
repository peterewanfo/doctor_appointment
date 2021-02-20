import 'package:doctor_appointment/custom_widgets/appointment_section_widget.dart';
import 'package:doctor_appointment/data/appointments.dart';
import 'package:doctor_appointment/models/appointment_sections.dart';
import 'package:doctor_appointment/provider/day_availability_data.dart';
import 'package:doctor_appointment/style/custom_colors.dart';
import 'package:doctor_appointment/style/dimens.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/all.dart';

import 'component/custom_outline_button_widget.dart';

class AvailibilityPage extends StatefulWidget {
  @override
  _AvailibilityPageState createState() => _AvailibilityPageState();
}

class _AvailibilityPageState extends State<AvailibilityPage> with SingleTickerProviderStateMixin {
  TabController _controller;
  
  @override
  void initState() { 
    super.initState();

    _controller = TabController(length: 5, vsync: this);
    
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
                  labelStyle: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 12.0, fontWeight: FontWeight.bold),
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Tab(
                      text: "Mon 13",
                    ),
                    Tab(
                      text: "Tue 14",
                    ),
                    Tab(
                      text: "Wed 15",
                    ),
                    Tab(
                      text: "Thur 16",
                    ),
                    Tab(
                      text: "Fri 17",
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
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: CustomDimensions.defaultMargin),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //FIRST
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(top: CustomDimensions.mediumSpacing),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(CustomDimensions.mediumSpacing),
                                  border: Border.all(color: Colors.grey.withOpacity(0.4) )
                                ),
                                child: Consumer(
                                  builder: (BuildContext context, T Function<T>(ProviderBase<Object, T>) watch, Widget child) { 
                                    
                                    var content = watch(selected_category_provider).state[0];

                                    int item_index;
                                    int i_n;
                                    int current_index = 0;

                                    return Container(
                                      padding: EdgeInsets.all(CustomDimensions.defaultMargin),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(content.day_title, style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold) ),
                                          SizedBox(height: 5.0,),
                                          Text(content.start_time + " - " + content.end_time, style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 12.0, color: Colors.grey) ),
                                          
                                          SizedBox(height: 15.0),
                                          Container(
                                            child: Wrap(
                                                  alignment: WrapAlignment.start,
                                                  direction: Axis.horizontal,
                                                  spacing: 10.0,
                                                  runSpacing: 10.0,
                                                  runAlignment: WrapAlignment.start,
                                                  children: content.all_time.map(
                                                    (item) => InkWell(
                                                      onTap: () => {
                                                        
                                                        i_n = content.all_time.indexOf(item),

                                                        context.refresh(selected_category_provider).state[current_index].all_time[i_n].is_selected = !content.all_time[i_n].is_selected

                                                      },
                                                      child: item.is_selected
                                                      ? CustomOutlineButton(title: item.time_title, is_checked: true)
                                                      : CustomOutlineButton(title: item.time_title, is_checked: false)
                                                    )
                                                  ).toList().cast<Widget>()
                                                )
                                          )

                                        ]
                                      ),
                                    );

                                   },
                                ),
                              ),

                              //SECOND
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(top: CustomDimensions.mediumSpacing),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(CustomDimensions.mediumSpacing),
                                  border: Border.all(color: Colors.grey.withOpacity(0.4) )
                                ),
                                child: Consumer(
                                  builder: (BuildContext context, T Function<T>(ProviderBase<Object, T>) watch, Widget child) { 
                                    
                                    var content = watch(selected_category_provider).state[1];

                                    int i_n;
                                    int current_index = 1;

                                    return Container(
                                      padding: EdgeInsets.all(CustomDimensions.defaultMargin),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(content.day_title, style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold) ),
                                          SizedBox(height: 5.0,),
                                          Text(content.start_time + " - " + content.end_time, style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 12.0, color: Colors.grey) ),
                                          
                                          SizedBox(height: 15.0),
                                          Container(
                                            child: Wrap(
                                                  alignment: WrapAlignment.start,
                                                  direction: Axis.horizontal,
                                                  spacing: 10.0,
                                                  runSpacing: 10.0,
                                                  runAlignment: WrapAlignment.start,
                                                  children: content.all_time.map(
                                                    (item) => InkWell(
                                                      onTap: () => {
                                                        
                                                        i_n = content.all_time.indexOf(item),

                                                        context.refresh(selected_category_provider).state[current_index].all_time[i_n].is_selected = !content.all_time[i_n].is_selected

                                                      },
                                                      child: item.is_selected
                                                      ? CustomOutlineButton(title: item.time_title, is_checked: true)
                                                      : CustomOutlineButton(title: item.time_title, is_checked: false)
                                                    )
                                                  ).toList().cast<Widget>()
                                                )
                                          )

                                        ]
                                      ),
                                    );

                                   },
                                ),
                              ),

                              //THIRD
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(top: CustomDimensions.mediumSpacing),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(CustomDimensions.mediumSpacing),
                                  border: Border.all(color: Colors.grey.withOpacity(0.4) )
                                ),
                                child: Consumer(
                                  builder: (BuildContext context, T Function<T>(ProviderBase<Object, T>) watch, Widget child) { 
                                    
                                    var content = watch(selected_category_provider).state[2];

                                    int i_n;
                                    int current_index = 2;

                                    return Container(
                                      padding: EdgeInsets.all(CustomDimensions.defaultMargin),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(content.day_title, style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold) ),
                                          SizedBox(height: 5.0,),
                                          Text(content.start_time + " - " + content.end_time, style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 12.0, color: Colors.grey) ),
                                          
                                          SizedBox(height: 15.0),
                                          Container(
                                            child: Wrap(
                                                  alignment: WrapAlignment.start,
                                                  direction: Axis.horizontal,
                                                  spacing: 10.0,
                                                  runSpacing: 10.0,
                                                  runAlignment: WrapAlignment.start,
                                                  children: content.all_time.map(
                                                    (item) => InkWell(
                                                      onTap: () => {

                                                        i_n = content.all_time.indexOf(item),

                                                        context.refresh(selected_category_provider).state[current_index].all_time[i_n].is_selected = !content.all_time[i_n].is_selected
                                                        
                                                      },
                                                      child: item.is_selected
                                                      ? CustomOutlineButton(title: item.time_title, is_checked: true)
                                                      : CustomOutlineButton(title: item.time_title, is_checked: false)
                                                    )
                                                  ).toList().cast<Widget>()
                                                )
                                          )

                                        ]
                                      ),
                                    );

                                   },
                                ),
                              ),

                              //FOURTH
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(top: CustomDimensions.mediumSpacing),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(CustomDimensions.mediumSpacing),
                                  border: Border.all(color: Colors.grey.withOpacity(0.4) )
                                ),
                                child: Consumer(
                                  builder: (BuildContext context, T Function<T>(ProviderBase<Object, T>) watch, Widget child) { 
                                    
                                    var content = watch(selected_category_provider).state[3];

                                    int i_n;
                                    int current_index = 3;

                                    return Container(
                                      padding: EdgeInsets.all(CustomDimensions.defaultMargin),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(content.day_title, style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold) ),
                                          SizedBox(height: 5.0,),
                                          Text(content.start_time + " - " + content.end_time, style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 12.0, color: Colors.grey) ),
                                          
                                          SizedBox(height: 15.0),
                                          Container(
                                            child: Wrap(
                                                  alignment: WrapAlignment.start,
                                                  direction: Axis.horizontal,
                                                  spacing: 10.0,
                                                  runSpacing: 10.0,
                                                  runAlignment: WrapAlignment.start,
                                                  children: content.all_time.map(
                                                    (item) => InkWell(
                                                      onTap: () => {
                                                        
                                                        i_n = content.all_time.indexOf(item),

                                                        context.refresh(selected_category_provider).state[current_index].all_time[i_n].is_selected = !content.all_time[i_n].is_selected

                                                      },
                                                      child: item.is_selected
                                                      ? CustomOutlineButton(title: item.time_title, is_checked: true)
                                                      : CustomOutlineButton(title: item.time_title, is_checked: false)
                                                    )
                                                  ).toList().cast<Widget>()
                                                )
                                          )

                                        ]
                                      ),
                                    );

                                   },
                                ),
                              ),
                            
                            ],
                          ),
                        ),
                      ),
                      SizedBox(),
                      SizedBox(),
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