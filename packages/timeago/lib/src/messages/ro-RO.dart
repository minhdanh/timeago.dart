import 'package:timeago/src/lookup_messages.dart';

/// Romanian messages
class RoMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : 'acum';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : 'peste';
  @override
  String suffixAgo({bool short = false}) => '';
  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'acum' : 'o clipită';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 min' : 'un minut';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes min' : '$minutes minute';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 oră' : 'o oră';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours ore' : '$hours ore';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 zi' : 'o zi';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days zile' : '$days zile';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 luni' : 'o luna';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months luni' : '$months luni';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 ani' : 'un an';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years ani' : '$years ani';

  @override
  String wordSeparator() => ' ';
}
