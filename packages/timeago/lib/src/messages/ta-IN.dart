import 'package:timeago/src/lookup_messages.dart';

/// Tamil messages
class TaMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => 'முன்னர்';
  @override
  String suffixFromNow({bool short = false}) => 'கழித்து';
  @override
  String lessThanOneMinute(int seconds, {bool short = false}) => 'சில நொடிகள்';
  @override
  String aboutAMinute(int minutes, {bool short = false}) => 'ஒரு நிமிடம்';
  @override
  String minutes(int minutes, {bool short = false}) => '$minutes நிமிடங்கள்';
  @override
  String aboutAnHour(int minutes, {bool short = false}) => 'ஓர் மணி நேரம்';
  @override
  String hours(int hours, {bool short = false}) => '$hours மணி நேரங்கள்';
  @override
  String aDay(int hours, {bool short = false}) => 'ஓர் நாள்';
  @override
  String days(int days, {bool short = false}) => '$days நாட்கள்';
  @override
  String aboutAMonth(int days, {bool short = false}) => 'ஓர் மாதம்';
  @override
  String months(int months, {bool short = false}) => '$months மாதங்கள்';
  @override
  String aboutAYear(int year, {bool short = false}) => 'ஓராண்டு';
  @override
  String years(int years, {bool short = false}) => '$years ஆண்டுகள்';
  @override
  String wordSeparator() => ' ';
}
