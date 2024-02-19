import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/colors.dart';

class OtpBox extends StatelessWidget {
  const OtpBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 64,
      decoration: BoxDecoration(
          border: Border.all(
            color: ColorTheme.drkBlue,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: TextField(
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          decoration: InputDecoration(
              hintText: "_",
              hintStyle: TextStyle(fontSize: 20),
              border: InputBorder.none),
          style: Theme.of(context).textTheme.headlineMedium,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      ),
    );
  }
}
