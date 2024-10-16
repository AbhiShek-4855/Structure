import 'dart:async';
import 'dart:ui' as ui;
 
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
 

import '../theme/app_colors.dart';

extension space on double {
  addHSpace() {
    return SizedBox(
      height: this,
    );
  }

  addWSpace() {
    return SizedBox(
      width: this,
    );
  }
}

// extension AppDateTime on DateTime {
//   appDateExtension() {
//     return DateFormat('dd MMMM, yyyy kk:mm').format(this);
//   }
//
//   appDateTimeFormat() {
//     return DateFormat('dd/MM/yyyy, hh:mm a').format(this);
//   }
//
//   appDateMonthExtension() {
//     return DateFormat('MMM dd, yyyy ').format(this);
//   }
//
//   taskDueDateExtension() {
//     return DateFormat('EEEE, MMMM dd, yyyy hh:mm a').format(this);
//   }
//
//   ticketDateExtension() {
//     return DateFormat('EEEE, MMMM dd, yyyy').format(this);
//   }
//
//   monthNameAndDateExt() {
//     return DateFormat('MMM d').format(this);
//   }
//
//   taskCreatedDateExtension() {
//     return DateFormat('MMM dd, yyyy hh:mm a').format(this);
//   }
//
//   getAppointmentShowFormat() {
//     return DateFormat("yyyy-MM-dd hh:mm a").format(this);
//   }
//
//   getspecificTimeFormat() {
//     return DateFormat("yyyy-MM-dd HH:mm").format(this);
//   }
//
//   simpledDateOnlyFormat() {
//     return DateFormat("yyyy-MM-dd").format(this);
//   }
//
//   getAppointmentRequestFormat() {
//     String timeFormat = DateFormat("yyyy-MM-ddTHH:mm:00.000").format(toUtc());
//     return "${timeFormat}Z";
//   }
// }

TextStyle appTextStyleBlack500 = GoogleFonts.openSans(
    color: app_text_black_1B1B1B, fontSize: 16, fontWeight: FontWeight.w500);

TextStyle appTextStyleGrey400 = GoogleFonts.openSans(
    color: app_grey_99A7AE, fontSize: 14, fontWeight: FontWeight.w400);

extension AppText on String {
  sortParamExtension() {
    switch (this) {
      case "Recommended":
        return null;
      case "Highest Price":
        return 0;
      case "Lowest Price":
        return 1;
      case "Largest Lot Size":
        return 13;
      case "Smallest Lot Size":
        return 12;
      case "Largest Square Feet":
        return 9;
      case "Smallest Square Feet":
        return 8;
      case "Most Bedrooms":
        return 5;
      case "Least Bedrooms":
        return 4;
      case "Most Bathrooms":
        return 7;
      case "Least Bathrooms":
        return 6;


      default:
        return 0;
    }
  }

  getButtonText() {
    if (this == "Search" || this == "My Feed") {
      return "Save Search";
    } else if (this == "Edit") {
      return "Update Search";
    }
  }

  filterPriceToInt() {
    if (this == "") {
      return null;
    } else {
      String replacedVal = this.replaceAll(",", "");
      int val = int.parse(replacedVal);
      return val;
    }
  }

  darkText({double? size, FontWeight? fontWeight}) {
    return Text(
      this,
      style: GoogleFonts.openSans(
          color: app_text_black_1B1B1B, fontSize: size, fontWeight: fontWeight),
    );
  }

  mediumText(
      {double size = 13,
      FontWeight? fontWeight,
      Color color = Colors.black,
      TextDecoration textDecoration = TextDecoration.none}) {
    return Text(
      this,
      style: GoogleFonts.openSans(
          decoration: textDecoration,
          color: color,
          fontSize: size,
          fontWeight: fontWeight),
    );
  }

  appOrangeText(
      {double? size,
      FontWeight? fontWeight,
      bool? underLine,
      TextAlign? textAlign,
      Color? textColor}) {
    return Text(
      this,
      style: GoogleFonts.openSans(
          color: textColor ?? app_Orange_FF521D,
          fontSize: size,
          fontWeight: fontWeight,
          decorationColor: app_Orange_FF521D,
          decoration: underLine != null
              ? underLine
                  ? TextDecoration.underline
                  : null
              : null),
      textAlign: textAlign,
    );
  }

  appOrangeText600(
      {double? size,
      FontWeight? fontWeight = FontWeight.w600,
      bool? underLine,
      TextAlign? textAlign}) {
    return Text(
      this,
      style: GoogleFonts.openSans(
          color: app_Orange_FF521D,
          fontSize: size,
          fontWeight: fontWeight,
          decorationColor: app_Orange_FF521D,
          decoration: underLine != null
              ? underLine
                  ? TextDecoration.underline
                  : null
              : null),
      textAlign: textAlign,
    );
  }

  appWhiteText(
      {double? size,
      FontWeight? fontWeight = FontWeight.w600,
      bool? underLine,
        TextOverflow?textOverFlow,
      TextAlign? textAlign}) {
    return Text(
      this,
      style: GoogleFonts.openSans(
          color: app_text_white_ffffff,
          fontSize: size,
          fontWeight: fontWeight,
          decorationColor: app_text_white_ffffff,
          decoration: underLine != null
              ? underLine
                  ? TextDecoration.underline
                  : null
              : null),
      textAlign: textAlign,
      overflow: textOverFlow??null,
    );
  }

  Widget appBlackText1B1B1B({double? size, FontWeight? fontWeight}) {
    return Text(
      this,
      style: GoogleFonts.openSans(
          color: app_text_black_1B1B1B, fontSize: size, fontWeight: fontWeight),
    );
  }

  Widget appBlackText1B1B1BMontserrat({double? size, FontWeight? fontWeight}) {
    return Text(
      this,
      style: GoogleFonts.montserrat(
          color: app_text_black_1B1B1B, fontSize: size, fontWeight: fontWeight),
    );
  }

  Widget appColorChangeText(
      {double? size,
      FontWeight? fontWeight,
      bool? underLine,
        TextOverflow?textOverFlow,
      TextAlign? textAlign,
      Color? color}) {
    return Text(
      this,
      style: GoogleFonts.openSans(
          color: color ?? app_Orange_FF521D,
          fontSize: size,
          fontWeight: fontWeight,
          decoration: underLine != null
              ? underLine
                  ? TextDecoration.underline
                  : null
              : null),
      textAlign: textAlign,
      overflow: textOverFlow??null,
    );
  }

  appGreyText(
      {double? size, FontWeight? fontWeight, int? maxLines, Color? color}) {
    return Text(
      this,
      maxLines: maxLines,
      overflow: maxLines == null ? null : TextOverflow.ellipsis,
      style: GoogleFonts.openSans(
          color: color ?? app_grey_99A7AE,
          fontSize: size,
          fontWeight: fontWeight),
    );
  }

  whiteText(
      {double? size, FontWeight? fontWeight, TextOverflow? textOverflow}) {
    return Text(
      this,
      overflow: textOverflow,
      style: GoogleFonts.openSans(
          color: app_text_white_ffffff, fontSize: size, fontWeight: fontWeight),
    );
  }

  appRedText({double? size, FontWeight? fontWeight}) {
    return Text(
      this,
      style: GoogleFonts.openSans(
          color: app_red_FF2C2C, fontSize: size, fontWeight: fontWeight),
    );
  }
}

getImageFromPath(String imagePath) async {
  final ByteData bytes = await rootBundle.load(imagePath);
  final Uint8List imageBytes = bytes.buffer.asUint8List();

  final Completer<ui.Image> completer = Completer();

  ui.decodeImageFromList(imageBytes, (ui.Image img) {
    return completer.complete(img);
  });

  return completer.future;
}

showModelBottomSheet(
  BuildContext context,
  Widget widget,
) {
  return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      isDismissible: true,
      context: context,
      builder: (context) {
        return widget;
      });
}

// showAppSnackBar(String tittle,
//     [bool button = false, bool isForLocation = false]) {
//   return Get.showSnackbar(
//     GetSnackBar(
//         message: tittle,
//         backgroundColor: app_Orange_FF521D,
//         borderRadius: 10,
//         margin: const EdgeInsets.all(8),
//         duration: const Duration(seconds: 5),
//         snackStyle: SnackStyle.FLOATING,
//         messageText: tittle.mediumText(color: Colors.white, size: 15),
//         mainButton: button
//             ? TextButton(
//                 onPressed: () {
//                   if (isForLocation) {
//                     AppSettings.openAppSettings();
//                   } else {
//                     AppSettings.openAppSettings();
//                   }
//                 },
//                 // child: "Setting".mediumText(
//                 //     color: app_Orange_FF7448, size: 16, fontWeight: FontWeight.w500),
//                 child: "Setting".mediumText(
//                     color: Colors.white, size: 16, fontWeight: FontWeight.w500),
//               )
//             : null),
//   );
// }

showErrorStatusAppSnackBar(String tittle, [bool status = false]) {
  return Get.showSnackbar(
    GetSnackBar(
      message: tittle,
      backgroundColor: status ? app_Green_5CB860 : app_text_red_F93943,
      borderRadius: 10,
      margin: const EdgeInsets.all(8),
      duration: const Duration(seconds: 5),
      snackStyle: SnackStyle.FLOATING,
      icon: Icon(
        status ? Icons.check_circle_outline_rounded : Icons.error_outline,
        color: Colors.white,
      ),
      messageText: tittle.mediumText(
          color: Colors.white, size: 15, fontWeight: FontWeight.w600),
    ),
  );
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

// String formatNumber(int number) {
//   return NumberFormat.compact().format(number);
// }
//
// String numberFormat(int number, String format) {
//   var formatter = NumberFormat(format);
//   return formatter.format(number);
// }
//
// String formatShareCount(int shareCount) {
//   if (shareCount < 10) {
//     return shareCount.toString();
//   } else if (shareCount >= 10 && shareCount < 1000) {
//     return shareCount.toString();
//   } else if (shareCount >= 1000 && shareCount < 1000000) {
//     double formattedCount = shareCount / 1000;
//     return '${formattedCount.toStringAsFixed(1)}k';
//   } else {
//     // Handle any other cases if needed
//     return shareCount.toString();
//   }
// }
//
// extension UsdFormateCurency on int {
//   String usdFormat() {
//     final formatCurrency = NumberFormat('#,##0', 'en_US').format(this);
//     return formatCurrency;
//   }
//
//
//   String savedSearchHomeCount(){
//     if(this > 100){
//       return "99+";
//     }
//     return "$this";
//   }
// }
