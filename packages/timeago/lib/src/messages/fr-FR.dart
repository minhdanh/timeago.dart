import 'package:timeago/src/lookup_messages.dart';

/// French messages
class FrMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? 'il y a ' : 'il y a';
  @override
  String prefixFromNow({bool short = false}) => short ? "d'ici " : "d'ici";
  @override
  String suffixAgo({bool short = false}) => '';
  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? "moins d'une minute" : "moins d'une minute";

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? 'une minute' : 'environ une minute';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes minutes' : 'environ $minutes minutes';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? 'une heure' : 'environ une heure';

  @override
  String hours(int hours, {bool short = false}) => '$hours heures';

  @override
  String aDay(int hours, {bool short = false}) =>
      short ? 'un jour' : 'environ un jour';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days jours' : 'environ $days jours';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? 'un mois' : 'environ un mois';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months mois' : 'environ $months mois';

  @override
  String aboutAYear(int year, {bool short = false}) => 'un an';

  @override
  String years(int years, {bool short = false}) => '$years ans';

  @override
  String wordSeparator() => ' ';
}
