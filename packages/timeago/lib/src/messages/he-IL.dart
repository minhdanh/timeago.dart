import 'package:timeago/src/lookup_messages.dart';

/// Hebrew Messages
class HeMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : 'לפני';
  @override
  String prefixFromNow({bool short = false}) => short ? 'בעוד' : 'בעוד';
  @override
  String suffixAgo({bool short = false}) => '';
  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'כעת' : 'כמה רגעים';

  @override
  String aboutAMinute(int minutes, {bool short = false}) => 'דקה';

  @override
  String minutes(int minutes, {bool short = false}) => '$minutes דקות';

  @override
  String aboutAnHour(int minutes, {bool short = false}) => 'כשעה';

  @override
  String hours(int hours, {bool short = false}) => '$hours שעות';

  @override
  String aDay(int hours, {bool short = false}) => 'יום';

  @override
  String days(int days, {bool short = false}) => '$days ימים';

  @override
  String aboutAMonth(int days, {bool short = false}) => 'כחודש';

  @override
  String months(int months, {bool short = false}) => '$months חודשים';

  @override
  String aboutAYear(int year, {bool short = false}) => 'כשנה';

  @override
  String years(int years, {bool short = false}) => '$years שנים';

  @override
  String wordSeparator() => ' ';
}
