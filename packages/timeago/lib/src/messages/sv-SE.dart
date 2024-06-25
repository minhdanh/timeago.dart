import 'package:timeago/src/lookup_messages.dart';

/// Swedish messages
class SvMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : 'för';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : 'om';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'sedan';
  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'nu' : 'en stund';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 min' : 'en minut';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes min' : '$minutes minuter';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 h' : 'ungefär en timme';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours h' : '$hours timmar';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 d' : 'en dag';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days d' : '$days dagar';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 mån' : 'ungefär en månad';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months mån' : '$months månader';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 år' : 'ungefär ett år';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years år' : '$years år';

  @override
  String wordSeparator() => ' ';
}
