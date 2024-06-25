import 'package:timeago/src/lookup_messages.dart';

/// English Messages
class EnMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'ago';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'from now';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'now' : 'a moment';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1m' : 'a minute';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '${minutes}m' : '$minutes minutes';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1h' : 'about an hour';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '${hours}h' : '$hours hours';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1d' : 'a day';

  @override
  String days(int days, {bool short = false}) =>
      short ? '${days}d' : '$days days';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1mo' : 'about a month';

  @override
  String months(int months, {bool short = false}) =>
      short ? '${months}mo' : '$months months';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1y' : 'about a year';

  @override
  String years(int years, {bool short = false}) =>
      short ? '${years}y' : '$years years';

  @override
  String wordSeparator() => ' ';
}
