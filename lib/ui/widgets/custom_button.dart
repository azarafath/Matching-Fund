import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function() onPressed;


  const CustomButton({
    Key? key,
    required this.label,
    required this.onPressed,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            left: getProportionateScreenWidth(24),
            right: getProportionateScreenWidth(24)),
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: getProportionateScreenHeight(40)),
            width: double.infinity,
            height: getProportionateScreenHeight(62),
            child: TextButton(
              onPressed: () {
                onPressed();
              },
              style: TextButton.styleFrom(
                  backgroundColor: kBlackColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  )),
              child: Text(
                label,
                style: whiteTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ),
        ),
      );
  }
}