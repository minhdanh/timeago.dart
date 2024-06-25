import 'package:timeago/src/lookup_messages.dart';

/// Norwegian-Nynorsk-Norway messages
class NnNoMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'sidan';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'frå no';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'no' : 'eit augeblink';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 min' : 'eit minutt';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes min' : '$minutes minutt';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 t' : 'rundt ein time';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours t' : '$hours timer';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 d' : 'ein dag';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days d' : '$days dagar';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 mnd' : 'omtrent ein månad';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months mnd' : '$months månadar';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 år' : 'omtrent eit år';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years år' : '$years år';

  @override
  String wordSeparator() => ' ';
}
