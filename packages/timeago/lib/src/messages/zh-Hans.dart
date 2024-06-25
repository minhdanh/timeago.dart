import 'package:timeago/src/lookup_messages.dart';

/// Chinese-China messages
class ZhHansMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => '前';
  @override
  String suffixFromNow({bool short = false}) => '后';
  @override
  String lessThanOneMinute(int seconds, {bool short = false}) => '少于一分钟';
  @override
  String aboutAMinute(int minutes, {bool short = false}) => '约1分钟';
  @override
  String minutes(int minutes, {bool short = false}) => '${minutes} 分';
  @override
  String aboutAnHour(int minutes, {bool short = false}) => '约1小时';
  @override
  String hours(int hours, {bool short = false}) => '约 ${hours} 小时';
  @override
  String aDay(int hours, {bool short = false}) => '约1天';
  @override
  String days(int days, {bool short = false}) => '约 ${days} 日';
  @override
  String aboutAMonth(int days, {bool short = false}) => '约1个月';
  @override
  String months(int months, {bool short = false}) => '约 ${months} 月';
  @override
  String aboutAYear(int year, {bool short = false}) => '约1年';
  @override
  String years(int years, {bool short = false}) => '约 ${years} 年';
  @override
  String wordSeparator() => ' ';
}
