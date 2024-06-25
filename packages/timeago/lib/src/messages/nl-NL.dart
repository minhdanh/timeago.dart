import 'package:timeago/src/lookup_messages.dart';

/// Dutch messages
class NlMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : 'over';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'geleden';
  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'nu' : 'een moment';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 min' : 'één minuut';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes min' : '$minutes minuten';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 u' : 'ongeveer één uur';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours u' : '$hours uur';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 d' : 'één dag';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days d' : '$days dagen';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 ma' : 'ongeveer één maand';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months ma' : '$months maanden';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 jr' : 'ongeveer één jaar';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years jr' : '$years jaren';

  @override
  String wordSeparator() => ' ';
}
