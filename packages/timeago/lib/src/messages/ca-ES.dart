import 'package:timeago/src/lookup_messages.dart';

/// Catalan Messages
class CaMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : 'fa';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : "d'aquí a";
  @override
  String suffixAgo({bool short = false}) => '';
  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'ara' : 'un moment';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 min' : 'un minut';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes min' : '$minutes minuts';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 hr' : 'una hora';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours hr' : '$hours hores';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 dia' : 'un dia';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days dies' : '$days dies';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 mes' : 'un mes';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months mesos' : '$months mesos';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 any' : 'un any';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years anys' : '$years anys';

  @override
  String wordSeparator() => ' ';
}
