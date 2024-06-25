import 'package:timeago/src/lookup_messages.dart';

/// Italian messages
class ItMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : 'tra';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'fa';
  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'ora' : 'meno di un minuto';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 m' : 'circa un minuto';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes m' : '${minutes} minuti';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 o' : "circa un'ora";

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours o' : '${hours} ore';

  @override
  String aDay(int hours, {bool short = false}) =>
      short ? '~1 g' : 'circa un giorno';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days g' : '${days} giorni';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 m' : 'circa un mese';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months m' : '${months} mesi';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 a' : 'circa un anno';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years a' : '${years} anni';

  @override
  String wordSeparator() => ' ';
}
