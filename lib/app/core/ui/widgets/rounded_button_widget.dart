// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';

class RoundedButtonWidget extends StatelessWidget {
  IconData icon;
  VoidCallback onPressed;

  RoundedButtonWidget({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      shape: CircleBorder(),
      shadowColor: context.colors.grey.withOpacity(0.2),
      //borderRadius: BorderRadius.circular(50),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.colors.white,
        ),
        child: IconButton(
          icon: Icon(
            icon,
            color: context.colors.greyDark,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
