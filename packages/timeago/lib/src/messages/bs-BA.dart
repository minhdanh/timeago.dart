import 'package:timeago/src/lookup_messages.dart';

/// Bosnian Messages
class BsMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : 'prije';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : 'za';
  @override
  String suffixAgo({bool short = false}) => '';
  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'upravo sad' : 'manje od minute';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 min.' : 'prije minute';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes min.' : '$minutes minuta';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 h.' : '~1 sat';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours h.' : '$hours sati';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 d.' : '~1 dan';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days d.' : '$days dana';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 m.' : '~1 mjesec';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months m.' : '$months mjeseci';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 g.' : '~1 godina';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years g.' : '$years godina';

  @override
  String wordSeparator() => ' ';
}
