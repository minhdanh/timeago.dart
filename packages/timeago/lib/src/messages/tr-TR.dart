import 'package:timeago/src/lookup_messages.dart';

/// Turkish messages
class TrMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : '';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : '';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'önce';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'kaldı';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'az önce' : 'biraz';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1dk' : 'bir dakika';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '${minutes}dk' : '$minutes dakika';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1sa' : 'bir saat';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '${hours}sa' : '$hours saat';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1g' : 'bir gün';

  @override
  String days(int days, {bool short = false}) =>
      short ? '${days}g' : '$days gün';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1ay' : 'bir ay';

  @override
  String months(int months, {bool short = false}) =>
      short ? '${months}ay' : '$months ay';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1y' : 'bir yıl';

  @override
  String years(int years, {bool short = false}) =>
      short ? '${years}y' : '$years yıl';

  @override
  String wordSeparator() => ' ';
}
