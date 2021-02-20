import 'dart:io';

import 'package:doctor_appointment/custom_widgets/custom_appbar.dart';
import 'package:doctor_appointment/style/custom_colors.dart';
import 'package:doctor_appointment/style/dimens.dart';
import 'package:doctor_appointment/ui/pages/__pages.dart';
import 'package:doctor_appointment/ui/pages/availability_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/all.dart';

class AppointmentsScreen extends HookWidget {
  TabController _controller;

  @override
  Widget build(BuildContext context) {
    DateTime currentBackPressTime;

    final _controller = useTabController(initialLength: 2);

    return WillPopScope(
      onWillPop: () {
        DateTime now = DateTime.now();

        if (currentBackPressTime == null ||
            now.difference(currentBackPressTime) > Duration(seconds: 2)) {
          currentBackPressTime = now;

          Fluttertoast.showToast(
              msg: "Press Back Once Again to Exit",
              backgroundColor: Colors.black);

          return Future.value(false);
        }

        exit(0);
        return Future.value(true);
      },
      child: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      CustomAppBar(title: "Appointments"),
                      Container(
                        height: 40.0,
                        margin: EdgeInsets.only(
                            left: CustomDimensions.defaultMargin * 2,
                            right: CustomDimensions.defaultMargin * 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              color: CustomColors.unSelectedButtonColor.withOpacity(0.4),
                            ),
                            color: CustomColors.unSelectedButtonColor),
                        child: TabBar(
                          controller: _controller,
                          labelColor: Colors.white,
                          unselectedLabelColor: CustomColors.selectedButtonColor.withOpacity(0.5),
                          labelStyle: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 16.0),
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: CustomColors.selectedButtonColor,
                          ),
                          tabs: [
                            Tab(
                              text: "Appointments",
                            ),
                            Tab(
                              text: "Availability",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    child: TabBarView(
                      physics: BouncingScrollPhysics(),
                      controller: _controller,
                      children: [
                        AppointmentPage(),
                        AvailibilityPage(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
