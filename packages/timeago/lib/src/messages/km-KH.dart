import 'package:timeago/src/lookup_messages.dart';

/// Cambodian messages
class KmMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : 'មុននេះ';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : 'ក្រោយពីនេះ';
  @override
  String suffixAgo({bool short = false}) => '';
  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'មិញ' : 'បន្ដិច';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 ន' : 'ប្រមាណមួយនាទី';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes ន' : ' $minutes នាទី';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 ម' : 'ប្រមាណមួយម៉ោង';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours ម' : ' $hours ម៉ោង';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 ថ' : 'មួយថ្ងៃ';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days ថ' : ' $days ថ្ងៃ';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 ខ' : 'ប្រមាណមួយខែ';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months ខ' : ' $months ខែ';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 ឆ' : 'ប្រមាណមួយឆ្នាំ';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years ឆ' : ' $years ឆ្នាំ';

  @override
  String wordSeparator() => '​';
}
