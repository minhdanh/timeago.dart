import 'package:timeago/src/lookup_messages.dart';

/// Malay-Malaysia messages
class MsMyMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'lepas';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'dari sekarang';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'sekarang' : 'saat';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 min' : 'seminit';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes min' : '$minutes minit';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 jam' : 'sejam';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours jam' : '$hours jam';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 hri' : 'sehari';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days hri' : '$days hari';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 bln' : 'sebulan';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months bln' : '$months bulan';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 thn' : 'setahun';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years thn' : '$years tahun';

  @override
  String wordSeparator() => ' ';
}
