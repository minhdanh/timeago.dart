import 'package:timeago/src/lookup_messages.dart';

/// Kurdish messages
class KuMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => '';
  @override
  String prefixFromNow({bool short = false}) => '';
  @override
  String suffixAgo({bool short = false}) => short ? '' : 'لەمەوپێش';
  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'لە ئێستاوە';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'ئێستا' : 'چەند چرکەیەک لەمەوپێش';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1 خولەک' : 'خولەکێک لەمەوپێش';

  @override
  String minutes(int minutes, {bool short = false}) {
    if (minutes == 1) {
      return short ? '1 خولەک' : 'خولەکێک لەمەوپێش';
    }

    return short ? 'خولەک $minutes' : '$minutes خولەک لەمەوپێش';
  }

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? 'کاژێر ~1' : 'کاژێرێک لەمەوپێش';

  @override
  String hours(int hours, {bool short = false}) {
    if (hours == 1) {
      return short ? 'کاژێر 1' : 'کاژێرێک لەمەوپێش';
    }

    return short ? 'کاژێر $hours' : '$hours کاژێر لەمەوپێش';
  }

  @override
  String aDay(int hours, {bool short = false}) =>
      short ? '~1 ڕۆژ' : 'ڕۆژێک لەمەوپێش';

  @override
  String days(int days, {bool short = false}) {
    if (days == 1) {
      return short ? '1 ڕۆژ' : 'ڕۆژێک لەمەوپێش';
    }

    return short ? 'رۆژ $days' : '$days ڕۆژ لەمەوپێش';
  }

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 مانگ' : 'مانگێک لەمەوپێش';

  @override
  String months(int months, {bool short = false}) {
    if (months == 1) {
      return short ? '1 مانگ' : 'مانگێک لەمەوپێش';
    }
    return short ? 'مانگ $months' : '$months مانگ لەمەوپێش';
  }

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 ساڵ' : 'ساڵێک لەمەوپێش';

  @override
  String years(int years, {bool short = false}) {
    if (years == 1) {
      return short ? '1 ساڵ' : 'ساڵێک لەمەوپێش';
    }

    return short ? 'ساڵ $years ' : '$years ساڵ لەمەوپێش';
  }

  @override
  String wordSeparator() => ' ';
}
