import 'package:timeago/src/lookup_messages.dart';

/// Croatian messages
class HrMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => 'prije';

  @override
  String prefixFromNow({bool short = false}) => 'za';

  @override
  String suffixAgo({bool short = false}) => '';

  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      'manje od minute';

  @override
  String aboutAMinute(int minutes, {bool short = false}) => 'oko minute';

  @override
  String minutes(int minutes, {bool short = false}) {
    if (minutes % 100 == 11 ||
        minutes % 100 == 12 ||
        minutes % 100 == 13 ||
        minutes % 100 == 14) {
      return '$minutes minuta';
    }

    if (minutes % 10 == 1) return '$minutes minutu';

    if (minutes % 10 == 2 || minutes % 10 == 3 || minutes % 10 == 4) {
      return '$minutes minute';
    }

    return '$minutes minuta';
  }

  @override
  String aboutAnHour(int minutes, {bool short = false}) => 'oko sata';

  @override
  String hours(int hours, {bool short = false}) {
    if (hours % 100 == 11 ||
        hours % 100 == 12 ||
        hours % 100 == 13 ||
        hours % 100 == 14) {
      return '$hours sati';
    }

    if (hours % 10 == 1) return '$hours sat';

    if (hours % 10 == 2 || hours % 10 == 3 || hours % 10 == 4) {
      return '$hours sata';
    }

    return '$hours sati';
  }

  @override
  String aDay(int hours, {bool short = false}) => 'dan';

  @override
  String days(int days, {bool short = false}) {
    if (days % 100 == 11) return '$days dana';
    if (days % 10 == 1) return '$days dan';
    return '$days dana';
  }

  @override
  String aboutAMonth(int days, {bool short = false}) => 'oko mjeseca';

  @override
  String months(int months, {bool short = false}) {
    if (months % 100 == 11 ||
        months % 100 == 12 ||
        months % 100 == 13 ||
        months % 100 == 14) {
      return '$months mjeseci';
    }

    if (months % 10 == 1) return '$months mjesec';

    if (months % 10 == 2 || months % 10 == 3 || months % 10 == 4) {
      return '$months mjeseca';
    }

    return '$months mjeseci';
  }

  @override
  String aboutAYear(int year, {bool short = false}) => 'oko godine';

  @override
  String years(int years, {bool short = false}) {
    if (years % 100 == 11 ||
        years % 100 == 12 ||
        years % 100 == 13 ||
        years % 100 == 14) {
      return '$years godina';
    }

    if (years % 10 == 1) return '$years godinu';

    if (years % 10 == 2 || years % 10 == 3 || years % 10 == 4) {
      return '$years godine';
    }

    return '$years godina';
  }

  @override
  String wordSeparator() => ' ';
}
