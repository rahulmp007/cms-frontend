import 'package:intl/intl.dart';

extension FormatInputDate on DateTime {
  String get formatToYYMMddHHmm =>
      DateFormat('yyyy-MM-dd').add_jm().format(this);

  String get formatToddMMYY => DateFormat('dd-MM-yyyy').format(this);
  String get formatToyyMMdd => DateFormat('yyyy-MM-dd').format(this);

  String get getMonthName => DateFormat('MMM').format(this);

  String get formatToddmmyyyyhms =>
      DateFormat().addPattern('dd-MM-yyyy').add_jms().format(this);

  String get formatToYYMMddHHmmWithoutApPm =>
      DateFormat('yyyy-MM-dd').addPattern('hh:mm:ss').format(this);

  // Create a formatter with the desired pattern
  String get format1 => DateFormat('MMMM dd | hh.mma').format(this);

  String get timePassed {
    final now = DateTime.now();
    final difference = now.difference(this);

    if (difference.inSeconds < 60) {
      return '${difference.inSeconds} seconds ago';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hours ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} days ago';
    } else {
      // For longer times, include the year.
      return DateFormat('yMMMMd').format(this); // Example: "November 25, 2024"
    }
  }
}
