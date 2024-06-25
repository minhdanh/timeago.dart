import 'package:timeago/src/lookup_messages.dart';

/// Portuguese-Brazil messages
class PtBrMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : 'há';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : 'em';
  @override
  String suffixAgo({bool short = false}) => '';
  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'agora' : 'alguns segundos';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 min' : 'cerca de um minuto';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '${minutes} min' : '${minutes} minutos';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1h' : 'cerca de uma hora';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '${hours} h' : '${hours} horas';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 dia' : 'um dia';

  @override
  String days(int days, {bool short = false}) =>
      short ? '${days} dias' : '${days} dias';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 mês' : 'cerca de um mês';

  @override
  String months(int months, {bool short = false}) =>
      short ? '${months} meses' : '${months} meses';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 ano' : 'cerca de um ano';

  @override
  String years(int years, {bool short = false}) =>
      short ? '${years} anos' : '${years} anos';

  @override
  String wordSeparator() => ' ';
}
