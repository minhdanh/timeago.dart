import 'package:timeago/src/lookup_messages.dart';

/// Hungarian Messages
class HuMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => 'ezelőtt';
  @override
  String prefixFromNow({bool short = false}) => 'mostantól';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'e';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'mostantól';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      'kevesebb mint egy perc';

  @override
  String aboutAMinute(int minutes, {bool short = false}) => 'kb. egy perc';

  @override
  String minutes(int minutes, {bool short = false}) => '$minutes perc';

  @override
  String aboutAnHour(int minutes, {bool short = false}) => 'kb. 1 óra';

  @override
  String hours(int hours, {bool short = false}) => '$hours óra';

  @override
  String aDay(int hours, {bool short = false}) => 'egy nap';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days nap' : '$days napok';

  @override
  String aboutAMonth(int days, {bool short = false}) => 'kb. egy hónap';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months honap' : '$months hónap';

  @override
  String aboutAYear(int year, {bool short = false}) => 'kb. egy év';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years év' : '$years évek';

  @override
  String wordSeparator() => ' ';
}
