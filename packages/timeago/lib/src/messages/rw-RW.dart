import 'package:timeago/src/lookup_messages.dart';

/// Kinyarwanda Messages
class RwMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : 'hashize';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : 'kuva';
  @override
  String suffixAgo({bool short = false}) => '';
  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'ubu' : 'agahe gato';

  @override
  String aboutAMinute(int minutes, {bool short = false}) => 'umunota';

  @override
  String minutes(int minutes, {bool short = false}) => 'iminota $minutes';

  @override
  String aboutAnHour(int minutes, {bool short = false}) => 'isaha';

  @override
  String hours(int hours, {bool short = false}) => 'amasaha $hours';

  @override
  String aDay(int hours, {bool short = false}) => 'umunsi';

  @override
  String days(int days, {bool short = false}) => 'iminsi $days';

  @override
  String aboutAMonth(int days, {bool short = false}) => 'ukwezi';

  @override
  String months(int months, {bool short = false}) => 'amezi $months';

  @override
  String aboutAYear(int year, {bool short = false}) => 'umwaka';

  @override
  String years(int years, {bool short = false}) => 'imyaka $years';

  @override
  String wordSeparator() => ' ';
}
