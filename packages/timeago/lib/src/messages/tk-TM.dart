import 'package:timeago/src/lookup_messages.dart';

/// Turkish messages
class TkMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => 'öň';
  @override
  String suffixFromNow({bool short = false}) => 'galdy';
  @override
  String lessThanOneMinute(int seconds, {bool short = false}) => 'biraz';
  @override
  String aboutAMinute(int minutes, {bool short = false}) => 'bir minut';
  @override
  String minutes(int minutes, {bool short = false}) => '$minutes minut';
  @override
  String aboutAnHour(int minutes, {bool short = false}) => 'bir sagat';
  @override
  String hours(int hours, {bool short = false}) => '$hours sagat';
  @override
  String aDay(int hours, {bool short = false}) => 'bir gün';
  @override
  String days(int days, {bool short = false}) => '$days gün';
  @override
  String aboutAMonth(int days, {bool short = false}) => 'bir aý';
  @override
  String months(int months, {bool short = false}) => '$months aý';
  @override
  String aboutAYear(int year, {bool short = false}) => 'bir ýyl';
  @override
  String years(int years, {bool short = false}) => '$years ýyl';
  @override
  String wordSeparator() => ' ';
}
