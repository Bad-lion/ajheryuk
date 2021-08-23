import 'package:flutter/material.dart';

class MainButton extends ElevatedButton {
  final BuildContext? context;
  final Widget? widgets;
  final Color? color;
  final bool? enableBorderSide;
  final Function(BuildContext context) func;
  MainButton(
      {Key? key,
      this.widgets,
      this.color,
      required this.func,
      this.context,
      this.enableBorderSide = false})
      : super(
          key: key,
          onPressed: () {
            func(context!);
          },
          child: widgets,
          style: ButtonStyle(
            shape: enableBorderSide == true
                ? MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(color: Color(0xffEEEEEE), width: 1.0)))
                : MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
            backgroundColor: MaterialStateProperty.all(color),
            minimumSize: MaterialStateProperty.all(
              Size(double.infinity, 56.0),
            ),
          ),
        );

  // @override
  // Widget build(BuildContext context) {
  //   return ElevatedButton(
  //     onPressed: () => func,
  //     child: widgets,
  //     style: ButtonStyle(
  //       shape: this.enableBorderSide == true
  //           ? MaterialStateProperty.all<RoundedRectangleBorder>(
  //               RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.circular(8.0),
  //                   side: BorderSide(color: Color(0xffEEEEEE), width: 1.0)))
  //           : MaterialStateProperty.all<RoundedRectangleBorder>(
  //               RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(8.0),
  //               ),
  //             ),
  //       backgroundColor: MaterialStateProperty.all(color),
  //       minimumSize: MaterialStateProperty.all(
  //         Size(double.infinity, 56.0),
  //       ),
  //     ),
  //   );
  // }
}
