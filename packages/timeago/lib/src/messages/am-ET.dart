import 'package:timeago/src/lookup_messages.dart';

/// Amharic Messages
class AmMessages implements LookupMessages {
  @override
  String aDay(int hours, {bool short = false}) => short ? '~1ቀ' : 'ቀን';

  @override
  String aboutAMinute(int minutes, {bool short = false}) =>
      short ? '1ደ' : 'አንድ ደቂቃ';

  @override
  String aboutAMonth(int days, {bool short = false}) =>
      short ? '~1ወር' : 'አንድ ወር ገደማ';

  @override
  String aboutAYear(int year, {bool short = false}) =>
      short ? '~1ዓ' : 'አንድ ዓመት ገደማ';

  @override
  String aboutAnHour(int minutes, {bool short = false}) =>
      short ? '~1ሰ' : 'ለአንድ ሰዓት ያህል';

  @override
  String days(int days, {bool short = false}) {
    if (days == 1) {
      return short ? '~1ቀ' : '$days ቀን';
    }
    return short ? '${days}ቀ' : '$days ቀናት';
  }

  @override
  String hours(int hours, {bool short = false}) {
    if (hours == 1) {
      return short ? '~1ሰ' : '$hours ሰአት';
    }
    return short ? '${hours}ሰ' : '$hours ሰአታት';
  }

  @override
  String lessThanOneMinute(int seconds, {bool short = false}) =>
      short ? 'አሁን' : 'አንድ አፍታ';

  @override
  String minutes(int minutes, {bool short = false}) {
    if (minutes == 1) {
      return short ? '1ደ' : '$minutes ደቂቃ';
    }
    return short ? '${minutes}ደ' : '$minutes ደቂቃዎች';
  }

  @override
  String months(int months, {bool short = false}) {
    if (months == 1) {
      return short ? '1ወር' : '$months ወር';
    }
    return short ? '${months}ወር' : '$months ወራት';
  }

  @override
  String prefixAgo({bool short = false}) => '';

  @override
  String prefixFromNow({bool short = false}) => '';

  @override
  String suffixAgo({bool short = false}) => short ? '' : 'በፊት';

  @override
  String suffixFromNow({bool short = false}) => short ? '' : 'ከአሁን ጀምሮ';
  @override
  String wordSeparator() => ' ';

  @override
  String years(int years, {bool short = false}) {
    if (years == 1) {
      return short ? '1ዓ' : '$years አመት';
    }
    return short ? '${years}ዓ' : '$years አመታት';
  }
}
