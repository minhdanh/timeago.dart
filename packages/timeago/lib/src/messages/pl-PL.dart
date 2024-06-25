import 'package:timeago/src/lookup_messages.dart';

/// Polish messgages
class PlMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => 'temu';
  @override
  String suffixFromNow({bool short = false}) => 'od tego momentu';
  @override
  String lessThanOneMinute(int seconds, {bool short = false}) => 'chwilę';
  @override
  String aboutAMinute(int minutes, {bool short = false}) => 'około minuty';
  @override
  String minutes(int minutes, {bool short = false}) =>
      _pluralize(minutes, 'minuty', 'minut');
  @override
  String aboutAnHour(int minutes, {bool short = false}) => 'około godziny';
  @override
  String hours(int hours, {bool short = false}) =>
      _pluralize(hours, 'godziny', 'godzin');
  @override
  String aDay(int hours, {bool short = false}) => 'dzień';
  @override
  String days(int days, {bool short = false}) => '$days dni';
  @override
  String aboutAMonth(int days, {bool short = false}) => 'około miesiąca';
  @override
  String months(int months, {bool short = false}) =>
      _pluralize(months, 'miesiące', 'miesięcy');
  @override
  String aboutAYear(int year, {bool short = false}) => 'około roku';
  @override
  String years(int years, {bool short = false}) =>
      _pluralize(years, 'lata', 'lat');
  @override
  String wordSeparator() => ' ';

  String _pluralize(int n, String form1, String form2) {
    // Rules as per https://www.gnu.org/software/gettext/manual/html_node/Plural-forms.html
    if (n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20)) {
      return '$n $form1';
    }

    return '$n $form2';
  }
}
