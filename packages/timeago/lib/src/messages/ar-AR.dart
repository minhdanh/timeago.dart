import 'package:timeago/src/lookup_messages.dart';

/// Arabic Messages
class ArMessages implements LookupMessages {
  @override
  String prefixAgo({bool short = false}) => short ? '' : 'منذ';
  @override
  String prefixFromNow({bool short = false}) => short ? '' : 'بعد';
  @override
  String suffixAgo({bool short = false}) => '';
  @override
  String suffixFromNow({bool short = false}) => '';

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) {
    if (seconds == 1) {
      return short ? 'ثا' : 'ثانية واحدة';
    } else if (seconds == 2) {
      return short ? 'ثا' : 'ثانيتين';
    } else if (seconds > 2 && seconds < 11) {
      return short ? '$seconds ثا' : '$seconds ثواني';
    } else {
      return short ? '$seconds ثا' : '$seconds ثانية';
    }
  }

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '~1 د' : 'دقيقة تقريباً';

  @override
  String minutes(int minutes, {bool short = false}) {
    if (minutes == 2) {
      return short ? 'د' : 'دقيقتين';
    } else if (minutes > 2 && minutes < 11) {
      return short ? '$minutes د' : '$minutes دقائق';
    } else {
      return short ? '$minutes د' : '$minutes دقيقة';
    }
  }

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1 س' : 'ساعة تقريباً';

  @override
  String hours(int hours, {bool short = false}) {
    if (hours == 2) {
      return short ? 'س' : 'ساعتين';
    } else if (hours > 2 && hours < 11) {
      return short ? '$hours س' : '$hours ساعات';
    } else {
      return short ? '$hours س' : '$hours ساعة';
    }
  }

  @override
  String aDay(int hours, {bool short = false}) => short ? '~1 ي' : 'يوم';

  @override
  String days(int days, {bool short = false}) {
    if (days == 2) {
      return short ? 'ي' : 'يومين';
    } else if (days > 2 && days < 11) {
      return short ? '$days ي' : '$days ايام';
    } else {
      return short ? '$days ي' : '$days يوم';
    }
  }

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1 ش' : 'شهر تقريباً';

  @override
  String months(int months, {bool short = false}) {
    if (months == 2) {
      return short ? 'ش' : 'شهرين';
    } else if (months > 2 && months < 11) {
      return short ? '$months ش' : '$months اشهر';
    } else if (months > 10) {
      return short ? '$months ش' : '$months شهر';
    }
    return short ? '$months ش' : '$months شهور';
  }

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1 س' : 'سنة تقريباً';

  @override
  String years(int years, {bool short = false}) {
    if (years == 2) {
      return short ? 'س' : 'سنتين';
    } else if (years > 2 && years < 11) {
      return short ? '$years س' : '$years سنوات';
    } else {
      return short ? '$years س' : '$years سنة';
    }
  }

  @override
  String wordSeparator() => ' ';
}
