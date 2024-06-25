import 'package:timeago/src/lookup_messages.dart';

/// Finnish Messages
class FiMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'sitten';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'kuluttua';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'nyt' : 'hetki';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 min' : 'noin minuutti';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '${minutes} min:ia' : '$minutes minuuttia';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 t' : 'noin tunti';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '${hours} t' : '$hours tuntia';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~pvä' : 'vuorokausi';

  @override
  String days(int days, {bool short = false}) =>
      short ? '${days} pvää' : '$days päivää';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~kk' : 'noin kuukausi';

  @override
  String months(int months, {bool short = false}) =>
      short ? '${months} kk:ta' : '$months kuukautta';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 v' : 'noin vuosi';

  @override
  String years(int years, {bool short = false}) =>
      short ? '${years}v:ta' : '$years vuotta';

  @override
  String wordSeparator() => ' ';
}
