import 'package:timeago/src/lookup_messages.dart';

/// Korean messages
class KoMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '지금부터';
  @override
  String suffixAgo({bool short = false}) => '전';
  @override
  String suffixFromNow({bool short = false}) => '후';
  @override
  String lessThanOneMinute(int seconds, {bool short = false}) => '방금';
  @override
  String aboutAMinute(int minutes, {bool short = false}) => '약 1분';
  @override
  String minutes(int minutes, {bool short = false}) => '${minutes}분';
  @override
  String aboutAnHour(int minutes, {bool short = false}) => '약 1시간';
  @override
  String hours(int hours, {bool short = false}) => '${hours}시간';
  @override
  String aDay(int hours, {bool short = false}) => '약 1일';
  @override
  String days(int days, {bool short = false}) => '${days}일';
  @override
  String aboutAMonth(int days, {bool short = false}) => '약 1달';
  @override
  String months(int months, {bool short = false}) => '${months}달';
  @override
  String aboutAYear(int year, {bool short = false}) => '약 1년';
  @override
  String years(int years, {bool short = false}) => '${years}년';
  @override
  String wordSeparator() => ' ';
}
