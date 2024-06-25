import 'package:timeago/src/lookup_messages.dart';

/// Indonesian messages
class IdMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'yang lalu';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'dari sekarang';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'baru saja' : 'kurang dari semenit';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1m' : 'semenit';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '${minutes}m' : '$minutes menit';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1j' : 'sekitar sejam';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '${hours}j' : '$hours jam';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1h' : 'sehari';

  @override
  String days(int days, {bool short = false}) =>
      short ? '${days}h' : '$days hari';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1bln' : 'sekitar sebulan';

  @override
  String months(int months, {bool short = false}) =>
      short ? '${months}bln' : '$months bulan';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1th' : 'sekitar setahun';

  @override
  String years(int years, {bool short = false}) =>
      short ? '${years}th' : '$years tahun';

  @override
  String wordSeparator() => ' ';
}
