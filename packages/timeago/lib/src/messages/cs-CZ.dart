import 'package:timeago/src/lookup_messages.dart';

/// Czech Messages
class CsMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : 'před';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => '';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'od teď';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'teď' : 'chvílí';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 min' : 'minutou';

  @override
  String minutes(int minutes, {bool short = false}) => short
      ? '$minutes min'
      : _pluralize(minutes, 'minutou', 'minutami', 'minutami');

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 hod' : 'hodinou';

  @override
  String hours(int hours, {bool short = false}) => short
      ? '$hours hod'
      : _pluralize(hours, 'hodinou', 'hodinami', 'hodinami');

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 den' : 'dnem';

  @override
  String days(int days, {bool short = false}) => short
      ? _pluralize(days, 'den', 'dny', 'dní')
      : _pluralize(days, 'dnem', 'dny', 'dny');

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 měsíc' : 'měsícem';

  @override
  String months(int months, {bool short = false}) => short
      ? _pluralize(months, 'měsíc', 'měsíce', 'měsíců')
      : _pluralize(months, 'měsícem', 'měsíci', 'měsíci');

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 rok' : 'rokem';

  @override
  String years(int years, {bool short = false}) => short
      ? _pluralize(years, 'rok', 'roky', 'roků')
      : _pluralize(years, 'rokem', 'roky', 'roky');

  @override
  String wordSeparator() => ' ';
}

String _pluralize(int n, String form1, String form2, String form3) {
  // Rules as per https://www.gnu.org/software/gettext/manual/html_node/Plural-forms.html
  if (n == 1) return '$n $form1';
  if (n >= 2 && n <= 4) return '$n $form2';
  return '$n $form3';
}
