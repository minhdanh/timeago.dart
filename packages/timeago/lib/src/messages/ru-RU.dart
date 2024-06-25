import 'package:timeago/src/lookup_messages.dart';

/// Russian messages
class RuMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : '';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : 'через';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'назад';
  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'только что' : 'минуту';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 мин.' : 'минуту';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes мин.' : '$minutes ${_convert(minutes, 'minutes')}';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 ч.' : 'час';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours ч.' : '$hours ${_convert(hours, 'hours')}';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 д.' : 'день';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days д.' : '$days ${_convert(days, 'days')}';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 мес.' : 'месяц';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months мес.' : '$months ${_convert(months, 'months')}';

  @override
  String aboutAYear(int year, {bool short = false}) => short ? '~1 г.' : 'год';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years г.' : '$years ${_convert(years, 'years')}';

  @override
  String wordSeparator() => ' ';

  String _convert(int number, String type) {
    var mod = number % 10;
    var modH = number % 100;

    if (mod == 1 && modH != 11) {
      switch (type) {
        case 'minutes':
          return 'минуту';
        case 'hours':
          return 'час';
        case 'days':
          return 'день';
        case 'months':
          return 'месяц';
        case 'years':
          return 'год';
        default:
          return '';
      }
    } else if (<int>[2, 3, 4].contains(mod) &&
        !<int>[12, 13, 14].contains(modH)) {
      switch (type) {
        case 'minutes':
          return 'минуты';
        case 'hours':
          return 'часа';
        case 'days':
          return 'дня';
        case 'months':
          return 'месяца';
        case 'years':
          return 'года';
        default:
          return '';
      }
    }
    switch (type) {
      case 'minutes':
        return 'минут';
      case 'hours':
        return 'часов';
      case 'days':
        return 'дней';
      case 'months':
        return 'месяцев';
      case 'years':
        return 'лет';
      default:
        return '';
    }
  }
}
