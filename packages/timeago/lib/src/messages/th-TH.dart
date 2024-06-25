import 'package:timeago/src/lookup_messages.dart';

/// Thai messages
class ThMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : 'เมื่อ';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : 'ใน';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'ที่แล้ว';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'จากนี้';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'เมื่อครู่' : 'เมื่อครู่นี้';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 นาที' : 'ประมาณหนึ่งนาที';

  @override
  String minutes(int minutes, {bool short = false}) => '$minutes นาที';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 ชม' : 'ประมาณหนึ่งชั่วโมง';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours ชม' : '$hours ชั่วโมง';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 ว' : 'หนึ่งวัน';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days ว' : '$days วัน';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 ด' : 'ประมาณหนึ่งเดือน';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months ด' : '$months เดือน';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 ป' : 'ประมาณหนึ่งปี';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years ป' : '$years ปี';

  @override
  String wordSeparator() => ' ';
}
