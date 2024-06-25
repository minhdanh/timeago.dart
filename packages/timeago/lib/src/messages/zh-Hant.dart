import 'package:timeago/src/lookup_messages.dart';

/// Chinese messages
class ZhHantMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => '前';
  @override
  String suffixFromNow({bool short = false}) => '後';
  @override
  String lessThanOneMinute(int seconds, {bool short = false}) => '少於一分鐘';
  @override
  String aboutAMinute(int minutes, {bool short = false}) => '約1分鐘';
  @override
  String minutes(int minutes, {bool short = false}) => '${minutes} 分';
  @override
  String aboutAnHour(int minutes, {bool short = false}) => '約1小時';
  @override
  String hours(int hours, {bool short = false}) => '約 ${hours} 小時';
  @override
  String aDay(int hours, {bool short = false}) => '約1天';
  @override
  String days(int days, {bool short = false}) => '約 ${days} 日';
  @override
  String aboutAMonth(int days, {bool short = false}) => '約1個月';
  @override
  String months(int months, {bool short = false}) => '約 ${months} 月';
  @override
  String aboutAYear(int year, {bool short = false}) => '約1年';
  @override
  String years(int years, {bool short = false}) => '約 ${years} 年';
  @override
  String wordSeparator() => ' ';
}
