/// [LookupMessages] template for any language
abstract class LookupMessages {
  /// Example: `prefixAgo()` 1 min `suffixAgo()`
  String prefixAgo({bool short = false});

  /// Example: `prefixFromNow()` 1 min `suffixFromNow()`
  String prefixFromNow({bool short = false});

  /// Example: `prefixAgo()` 1 min `suffixAgo()`
  String suffixAgo({bool short = false});

  /// Example: `prefixFromNow()` 1 min `suffixFromNow()`
  String suffixFromNow({bool short = false});

  /// Format when time is less than a minute
  String lessThanOneMinute(int seconds, {bool short = false});

  /// Format when time is about a minute
  String aboutAMinute(int minutes, {bool short = false});

  /// Format when time is in minutes
  String minutes(int minutes, {bool short = false});

  /// Format when time is about an hour
  String aboutAnHour(int minutes, {bool short = false});

  /// Format when time is in hours
  String hours(int hours, {bool short = false});

  /// Format when time is a day
  String aDay(int hours, {bool short = false});

  /// Format when time is in days
  String days(int days, {bool short = false});

  /// Format when time is about a month
  String aboutAMonth(int days, {bool short = false});

  /// Format when time is in months
  String months(int months, {bool short = false});

  /// Format when time is about a year
  String aboutAYear(int year, {bool short = false});

  /// Format when time is about a year
  String years(int years, {bool short = false});

  /// word separator when words are concatenated
  String wordSeparator() => ' ';
}
