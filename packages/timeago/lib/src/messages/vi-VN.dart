import 'package:timeago/src/lookup_messages.dart';

/// Vietnamese messages
class ViMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : '';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : '';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'trước';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'nữa';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'bây giờ' : 'một phút';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 ph' : 'khoảng một phút';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes ph' : '$minutes phút';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 h' : 'khoảng 1 tiếng';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours h' : '$hours tiếng';

  @override
  String aDay(int hours, {bool short = false}) =>
      short ? '~1 ngày' : 'một ngày';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days ngày' : '$days ngày';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 tháng' : 'khoảng 1 tháng';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months tháng' : '$months tháng';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 năm' : 'khoảng 1 năm';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years năm' : '$years năm';

  @override
  String wordSeparator() => ' ';
}
