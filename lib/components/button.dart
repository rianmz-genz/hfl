import 'package:flutter/material.dart';
import 'package:todoapplocal/components/text.dart';
import 'package:todoapplocal/theme/index.dart';

class Button extends StatelessWidget {
  Button({super.key, this.onPressed, required this.value});
  String value;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        style: ButtonStyle(
          overlayColor:
              MaterialStateProperty.all(AppColors.redPastel.withOpacity(0.6)),
          backgroundColor: MaterialStateProperty.all(AppColors.redPastel),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(8.0), // Adjust the value as needed
            ),
          ),
        ),
        onPressed: () {
          // Add login functionality here
        },
        child: MyText(
          text: value,
          weight: FontWeight.normal,
          size: FontSize.title,
          color: Colors.white,
        ),
      ),
    );
  }
}
