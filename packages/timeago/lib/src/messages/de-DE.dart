import 'package:timeago/src/lookup_messages.dart';

/// German Messages
class DeMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : 'vor';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : 'in';
  @override
  String suffixAgo({bool short = false}) => '';
  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'Jetzt' : 'weniger als einer Minute';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 Min.' : 'einer Minute';

  @override
  String minutes(int minutes, {bool short = false}) =>
      short ? '$minutes Min.' : '$minutes Minuten';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 Std.' : '~1 Stunde';

  @override
  String hours(int hours, {bool short = false}) =>
      short ? '$hours Std.' : '$hours Stunden';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 Tg.' : '~1 Tag';

  @override
  String days(int days, {bool short = false}) =>
      short ? '$days Tg.' : '$days Tagen';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 Mo.' : '~1 Monat';

  @override
  String months(int months, {bool short = false}) =>
      short ? '$months Mo.' : '$months Monaten';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 Jr.' : '~1 Jahr';

  @override
  String years(int years, {bool short = false}) =>
      short ? '$years Jr.' : '$years Jahren';

  @override
  String wordSeparator() => ' ';
}
