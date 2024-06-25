import 'package:timeago/src/lookup_messages.dart';

/// Divehi Messages
class DvMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'ކުރިން';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'ފަހުން';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'މިހާރު' : 'ހިނދުކޮޅެއް';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 މިނެޓް' : 'މިނެޓެއް ހާއިރު';

  @override
  String minutes(int minutes, {bool short = false}) => '$minutes މިނެޓު';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 ގ' : 'ގަޑިއިރެއް ހާއިރު';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours ގ' : '$hours ގަޑިއިރު';

  @override
  String aDay(int hours, {bool short = false}) =>
      short ? '~1 ދުވަސް' : 'އެއް ދުވަސް';

  @override
  String days(int days, {bool short = false}) => '$days ދުވަސް';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 މަސް' : 'މަހެއް ހާ ދުވަސް';

  @override
  String months(int months, {bool short = false}) => '$months މަސް';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 އަހަރު' : 'އަހަރެއް ހާ ދުވަސް';

  @override
  String years(int years, {bool short = false}) => '$years އަހަރު';

  @override
  String wordSeparator() => ' ';
}
