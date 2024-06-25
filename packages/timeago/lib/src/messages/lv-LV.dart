import 'package:timeago/src/lookup_messages.dart';

/// Latvian messages
class LvMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : 'pirms';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : 'pēc';
  @override
  String suffixAgo({bool short = false}) => '';
  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'tikai tagad' : 'minūtes';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 min.' : 'minūtes';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes min.' : '$minutes ${_convert(minutes, 'minutes')}';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 st.' : 'stundas';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours st.' : '$hours ${_convert(hours, 'hours')}';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 d.' : 'dienas';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days d.' : '$days ${_convert(days, 'days')}';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 mēn.' : 'mēneša';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months mēn.' : '$months ${_convert(months, 'months')}';

  @override
  String aboutAYear(int year, {bool short = false}) => short ? '~1 g.' : 'gada';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years g.' : '$years ${_convert(years, 'years')}';

  @override
  String wordSeparator() => ' ';

  String _convert(int number, String type) {
    var mod = number % 10;

    if (mod == 1) {
      switch (type) {
        case 'minutes':
          return 'minūtes';
        case 'hours':
          return 'stundas';
        case 'days':
          return 'dienas';
        case 'months':
          return 'mēneša';
        case 'years':
          return 'gada';
        default:
          return '';
      }
    }
    switch (type) {
      case 'minutes':
        return 'minūtēm';
      case 'hours':
        return 'stundām';
      case 'days':
        return 'dienām';
      case 'months':
        return 'mēnešiem';
      case 'years':
        return 'gadiem';
      default:
        return '';
    }
  }
}
