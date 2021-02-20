import 'package:doctor_appointment/style/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {

  final String title;
  final bool is_checked;
  final Function onPressed;

  CustomOutlineButton({
    @required this.title,
    this.is_checked = false,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return is_checked 
    ? Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: CustomColors.selectedButtonColor)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(title, style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 12.0, color: CustomColors.selectedButtonColor ) ),
      ),
    )
    : Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: CustomColors.unSelectedButtonColor)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(title, style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 12.0) ),
      ),
    );
  }
}