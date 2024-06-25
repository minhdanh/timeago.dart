import 'package:timeago/src/lookup_messages.dart';

/// Danish Messages
class DaMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : '';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : '';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'siden';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'fra nu';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'nu' : 'et øjeblik';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 min' : 'et minut';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes min' : '$minutes minutter';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 t' : 'omkring en time';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours t' : '$hours timer';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 d' : 'en dag';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days d' : '$days dage';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 md' : 'omkring en måned';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months md' : '$months måneder';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 år' : 'omkring et år';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years år' : '$years år';

  @override
  String wordSeparator() => ' ';
}
