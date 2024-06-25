import 'package:timeago/src/lookup_messages.dart';

/// Farsi Messages
class FaMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => 'پیش';
  @override
  String suffixFromNow({bool short = false}) => 'بعد';
  @override
  String lessThanOneMinute(int seconds, {bool short = false}) => 'چند لحظه';
  @override
  String aboutAMinute(int minutes, {bool short = false}) => 'یک دقیقه';
  @override
  String minutes(int minutes, {bool short = false}) => '${minutes} دقیقه';
  @override
  String aboutAnHour(int minutes, {bool short = false}) => '~یک ساعت';
  @override
  String hours(int hours, {bool short = false}) => '${hours} ساعت';
  @override
  String aDay(int hours, {bool short = false}) => '~یک روز';
  @override
  String days(int days, {bool short = false}) => '${days} روز';
  @override
  String aboutAMonth(int days, {bool short = false}) => '~یک ماه';
  @override
  String months(int months, {bool short = false}) => '${months} ماه';
  @override
  String aboutAYear(int year, {bool short = false}) => '~یک سال';
  @override
  String years(int years, {bool short = false}) => '${years} سال';
  @override
  String wordSeparator() => ' ';
}
