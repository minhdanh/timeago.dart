import 'package:timeago/src/lookup_messages.dart';

/// Estonian Messages
class EtMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'tagasi';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'pärast';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'nüüd' : 'hetk';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1m' : 'üks minut';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '${minutes}m' : '$minutes minutit';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1t' : 'umbes tunni';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '${hours}t' : '$hours tunni';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1p' : 'üks päev';

  @override
  String days(int days, {bool short = false}) =>
      short ? '${days}p' : '$days päeva';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1k' : 'umbes kuu';

  @override
  String months(int months, {bool short = false}) =>
      short ? '${months}k' : '$months kuud';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1a' : 'umbes aasta';

  @override
  String years(int years, {bool short = false}) =>
      short ? '${years}a' : '$years aastat';

  @override
  String wordSeparator() => ' ';
}
