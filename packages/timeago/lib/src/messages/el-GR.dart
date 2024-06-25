import 'package:timeago/src/lookup_messages.dart';

/// Greek messages
class GrMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'πρίν';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'απο τώρα';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'τώρα' : 'μια στιγμή';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 λπτ' : 'ένα λεπτό';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes λπτ' : '$minutes λεπτά';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 ώρ' : 'περίπου μια ώρα';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours ώρες' : '$hours ώρες';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 μρ' : 'μια μέρα';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days μρς' : '$days μέρες';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 μν' : 'περίπου ένα μήνα';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months μνς' : '$months μήνες';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 χρ' : 'περίπου ένα χρόνο';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years χρ' : '$years χρόνια';

  @override
  String wordSeparator() => ' ';
}
