import 'package:timeago/src/lookup_messages.dart';

/// Serbian Messages
class SrMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : 'пре';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : 'за';
  @override
  String suffixAgo({bool short = false}) => '';
  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'сад' : 'мање од минута';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 мин.' : 'пре минут';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes мин.' : '$minutes минута';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 ч.' : '~1 сат';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours ч.' : '$hours сати';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 д.' : '~1 дан';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days д.' : '$days дана';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 м.' : '~1 месец';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months м.' : '$months месеци';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 г.' : '~1 година';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years г.' : '$years године';

  @override
  String wordSeparator() => ' ';
}
