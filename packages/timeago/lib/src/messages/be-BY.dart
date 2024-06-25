import 'package:timeago/src/lookup_messages.dart';

/// Belarusian messages (code based by russian and ukrainian translations)
class BeMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : 'праз';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'таму';
  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'толькі што' : 'хвіліна';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '~1 мін.' : 'хвіліна';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes мін.' : '$minutes ${_convert(minutes, 'minutes')}';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 гад.' : 'гадзіна';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours гад.' : '$hours ${_convert(hours, 'hours')}';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 дзн.' : 'дзень';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days дзн.' : '$days ${_convert(days, 'days')}';

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
          return 'хвіліну';
        case 'hours':
          return 'гадзіна';
        case 'days':
          return 'дзень';
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
          return 'хвіліны';
        case 'hours':
          return 'гадзіны';
        case 'days':
          return 'дня';
        case 'months':
          return 'месяца';
        case 'years':
          return 'гады';
        default:
          return '';
      }
    }
    switch (type) {
      case 'minutes':
        return 'хвілін';
      case 'hours':
        return 'гадзін';
      case 'days':
        return 'дзён';
      case 'months':
        return 'месяцаў';
      case 'years':
        return 'гадоў';
      default:
        return '';
    }
  }
}
