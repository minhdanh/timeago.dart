import 'package:timeago/src/lookup_messages.dart';

/// Azeri Messages
class AzMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'əvvəl';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'indidən';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'indi' : 'bir dəqiqə';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 dəq' : 'bir dəqiqə';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes dəq' : '$minutes dəqiqə';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 s' : 'təxminən 1 saat';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours s' : '$hours saat';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 g' : 'bir gün';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days g' : '$days gün';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 ay' : 'təxminən 1 ay';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months ay' : '$months ay';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 il' : 'təxminən 1 il';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years il' : '$years il';

  @override
  String wordSeparator() => ' ';
}
