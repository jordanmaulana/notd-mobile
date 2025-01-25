import 'dart:convert';

import 'package:get/get.dart';

extension MyStringExtension on String? {
  /// Used for number formatting.
  /// Adding comma, every 3 digits.
  String get withNumberSeparator {
    if (this == null) {
      return '';
    }
    final formattedString = this!.replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match match) => '${match.group(1)},',
    );
    return formattedString;
  }

  String get initial {
    if (this == null) return '';

    return this!
        .split(' ') // Split the string into words
        .map((word) => word.isNotEmpty
            ? word[0].toUpperCase()
            : '') // Take the first letter of each word and convert it to uppercase
        .join(); // Combine the initials into a single string
  }
}

extension MyMapExtension on dynamic {
  /// Used to print json map to be more readable in logs.
  String get prettyPrint {
    if (this == null) return '';
    try {
      var encoder = const JsonEncoder.withIndent('     ');
      return encoder.convert(this);
    } catch (e) {
      Get.log(e.toString());
      return '';
    }
  }
}
