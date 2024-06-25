import 'package:intl/intl.dart';
import 'package:timeago/src/lookup_messages.dart';

/// Myanmar Messages
class MyMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : '';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : 'ယခုမှစ၍ ';
  @override
  String suffixAgo({bool short = false}) => short ? '' : '';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'စောနက' : 'စောနက';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '၁မိနစ်' : 'လွန်ခဲ့သော ၁ မိနစ်ခန့်';

  @override
  String minutes(int minutes, {bool short = false}) => short
      ? '${NumberFormat.compact(locale: 'my').format(minutes)}မိနစ်'
      : 'လွန်ခဲ့သော ${NumberFormat.compact(locale: 'my').format(minutes)} မိနစ်';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '၁နာရီ' : 'လွန်ခဲ့သော ၁ နာရီခန့်';

  @override
  String hours(int hours, {bool short = false}) => short
      ? '${NumberFormat.compact(locale: 'my').format(hours)}နာရီ'
      : 'လွန်ခဲ့သော ${NumberFormat.compact(locale: 'my').format(hours)} နာရီ';

  @override
  String aDay(int hours, {bool short = false}) =>
      short ? '၁ရက်' : 'လွန်ခဲ့သော ၁ ရက်';

  @override
  String days(int days, {bool short = false}) => short
      ? '${NumberFormat.compact(locale: 'my').format(days)}ရက်'
      : 'လွန်ခဲ့သော ${NumberFormat.compact(locale: 'my').format(days)} ရက်';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '၁လ' : 'လွန်ခဲ့သော ၁ လခန့်';

  @override
  String months(int months, {bool short = false}) => short
      ? '${NumberFormat.compact(locale: 'my').format(months)}လ'
      : 'လွန်ခဲ့သော ${NumberFormat.compact(locale: 'my').format(months)} လ';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '၁နှစ်' : 'လွန်ခဲ့သော ၁ နှစ်ခန့်';

  @override
  String years(int years, {bool short = false}) => short
      ? '${NumberFormat.compact(locale: 'my').format(years)}နှစ်'
      : 'လွန်ခဲ့သော ${NumberFormat.compact(locale: 'my').format(years)} နှစ်';

  @override
  String wordSeparator() => ' ';
}
