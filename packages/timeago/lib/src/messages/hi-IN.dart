import 'package:timeago/src/lookup_messages.dart';

/// Hindi Messages
class HiMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'पहले';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'अब से';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'अभी अभी' : 'एक क्षण';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 मि' : 'एक मिनट';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes मि' : '$minutes मिनट';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 घं' : 'करीब एक घंटा';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours घं' : '$hours घंटे';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 दि' : 'एक दिन';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days दि' : '$days दिन';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 म' : 'तक़रीबन एक महीना';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months म' : '$months महीने';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 सा' : 'एक साल';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years सा' : '$years वर्षों';

  @override
  String wordSeparator() => ' ';
}
