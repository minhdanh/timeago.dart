import 'package:timeago/src/lookup_messages.dart';

/// Mongolian Messages
class MnMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'өмнө';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'дараа';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'саяхан' : 'хэдхэн мөчийн';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 мин' : 'минутын';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes мин' : '$minutes минутын';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 ц' : 'цаг орчим';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours ц' : '$hours цагийн';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 ө' : 'өдрийн';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days ө' : '$days өдрийн';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 с' : 'сар орчмын';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months с' : '$months сарын';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 ж' : 'жил орчмын';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years ж' : '$years жилийн';

  @override
  String wordSeparator() => ' ';
}
