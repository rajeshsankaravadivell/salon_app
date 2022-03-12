import 'package:intl/intl.dart';

final format = DateFormat.yMMMMd('en_US');

extension Formatter on DateTime {
  String formatDate() {
    return format.format(this);
  }

  String formatyMMMd() {
    return DateFormat.yMMMd('en_us').format(this);
  }
}