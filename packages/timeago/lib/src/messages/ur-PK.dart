import 'package:timeago/src/lookup_messages.dart';

/// Urdu Messages
class UrMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : '';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : '';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'پہلے';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'اب سے';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'ابھی' : 'ایک لمحہ';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '١ م' : 'ایک منٹ';

  @override
  String minutes(int minutes, {bool short = false}) => short
      ? '${acmoConvertToUrduNumbers(minutes)} منٹ'
      : '${acmoConvertToUrduNumbers(minutes)} منٹ';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~١ گھ' : 'ایک گھنٹہ';

  @override
  String hours(int hours, {bool short = false}) => short
      ? '${acmoConvertToUrduNumbers(hours)} گھ'
      : '${acmoConvertToUrduNumbers(hours)} گھنٹے';

  @override
  String aDay(int hours, {bool short = false}) => short ? '~١ د' : 'ایک دن';

  @override
  String days(int days, {bool short = false}) => short
      ? '${acmoConvertToUrduNumbers(days)} د'
      : '${acmoConvertToUrduNumbers(days)} دن';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~١ ماہ' : 'ایک مہینہ';

  @override
  String months(int months, {bool short = false}) => short
      ? '${acmoConvertToUrduNumbers(months)} ماہ'
      : '${acmoConvertToUrduNumbers(months)} مہینہ';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~١ س' : 'ایک سال';

  @override
  String years(int years, {bool short = false}) => short
      ? '${acmoConvertToUrduNumbers(years)} س'
      : '${acmoConvertToUrduNumbers(years)} برس';

  @override
  String wordSeparator() => ' ';
}

String acmoConvertToUrduNumbers(int input) {
  const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  const urdu = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];

  var result = input.toString();
  for (var i = 0; i < english.length; i++) {
    result = result.replaceAll(english[i], urdu[i]);
  }

  return result;
}
