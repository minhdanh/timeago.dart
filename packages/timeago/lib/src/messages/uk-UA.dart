import 'package:timeago/src/lookup_messages.dart';

/// Ukrainian messages
class UkMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : '';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : 'через';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'тому';
  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'тільки що' : 'хвилину';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '~1 хв.' : 'хвилину';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes хв.' : '$minutes ${_convert(minutes, 'minutes')}';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 год.' : 'годину';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours год.' : '$hours ${_convert(hours, 'hours')}';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 д.' : 'день';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days д.' : '$days ${_convert(days, 'days')}';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 міс.' : 'місяць';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months міс.' : '$months ${_convert(months, 'months')}';

  @override
  String aboutAYear(int year, {bool short = false}) => short ? '~1 р.' : 'рік';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years р.' : '$years ${_convert(years, 'years')}';

  @override
  String wordSeparator() => ' ';

  String _convert(int number, String type) {
    var mod = number % 10;
    var modH = number % 100;

    if (mod == 1 && modH != 11) {
      switch (type) {
        case 'minutes':
          return 'хвилину';
        case 'hours':
          return 'годину';
        case 'days':
          return 'день';
        case 'months':
          return 'місяць';
        case 'years':
          return 'рік';
        default:
          return '';
      }
    } else if ([2, 3, 4].contains(mod) && ![12, 13, 14].contains(modH)) {
      switch (type) {
        case 'minutes':
          return 'хвилини';
        case 'hours':
          return 'години';
        case 'days':
          return 'дні';
        case 'months':
          return 'місяця';
        case 'years':
          return 'роки';
        default:
          return '';
      }
    }
    switch (type) {
      case 'minutes':
        return 'хвилин';
      case 'hours':
        return 'годин';
      case 'days':
        return 'днів';
      case 'months':
        return 'місяців';
      case 'years':
        return 'років';
      default:
        return '';
    }
  }
}
