import 'package:timeago/src/lookup_messages.dart';

/// Spanish Messages
class EsMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : 'hace';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : 'dentro de';
  @override
  String suffixAgo({bool short = false}) => '';
  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'ahora' : 'un momento';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 min' : 'un minuto';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes min' : '$minutes minutos';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 hr' : 'una hora';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours hr' : '$hours horas';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 día' : 'un día';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days días' : '$days días';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 mes' : 'un mes';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months meses' : '$months meses';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 año' : 'un año';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years años' : '$years años';

  @override
  String wordSeparator() => ' ';
}
