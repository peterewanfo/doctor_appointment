import 'package:doctor_appointment/style/custom_colors.dart';
import 'package:doctor_appointment/style/dimens.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  String title;

  CustomAppBar({
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(CustomDimensions.defaultMargin),
      child: Row(
        children: [
          InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(color: CustomColors.selectedButtonColor)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Center(
                        child: Icon(Icons.arrow_back_ios_rounded,
                            color: CustomColors.selectedButtonColor, size: 15.0)),
                  ))),
          Expanded(
              child: Center(
                  child: Text(title,
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          fontWeight: FontWeight.bold,
                          color: CustomColors.selectedButtonColor)))),
        ],
      ),
    );
  }
}
