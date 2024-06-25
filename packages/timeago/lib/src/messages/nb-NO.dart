import 'package:timeago/src/lookup_messages.dart';

/// Norwegian-Bokm-Norway messages
class NbNoMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'siden';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'fra nå';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'nå' : 'ett øyeblikk';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 min' : 'ett minutt';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes min' : '$minutes minutter';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 t' : 'rundt en time';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours t' : '$hours timer';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 d' : 'en dag';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days d' : '$days dager';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 mnd' : 'omtrent en måned';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months mnd' : '$months måneder';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 år' : 'omtrent et år';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years år' : '$years år';

  @override
  String wordSeparator() => ' ';
}
