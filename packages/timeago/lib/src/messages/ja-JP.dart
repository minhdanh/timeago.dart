import 'package:timeago/src/lookup_messages.dart';

/// Japanese messages
class JaMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '今から';
  @override
  String suffixAgo({bool short = false}) => '前';
  @override
  String suffixFromNow({bool short = false}) => '後';
  @override
  String lessThanOneMinute(int seconds, {bool short = false}) => '${seconds}秒';
  @override
  String aboutAMinute(int minutes, {bool short = false}) => '約1分';
  @override
  String minutes(int minutes, {bool short = false}) => '${minutes}分';
  @override
  String aboutAnHour(int minutes, {bool short = false}) => '約1時間';
  @override
  String hours(int hours, {bool short = false}) => '${hours}時間';
  @override
  String aDay(int hours, {bool short = false}) => '1日';
  @override
  String days(int days, {bool short = false}) => '${days}日';
  @override
  String aboutAMonth(int days, {bool short = false}) => '約1か月';
  @override
  String months(int months, {bool short = false}) => '${months}か月';
  @override
  String aboutAYear(int year, {bool short = false}) => '約1年';
  @override
  String years(int years, {bool short = false}) => '${years}年';
  @override
  String wordSeparator() => '';
}
