import 'package:timeago/src/lookup_messages.dart';
import 'package:timeago/src/messages/messages.dart';

String _default = 'en';

Map<String, LookupMessages> _lookupMessagesMap = {
  'am-ET': AmMessages(), // Amharic (Ethiopia)
  'ar-SA': ArMessages(), // Arabic (Saudi Arabia)
  'az-AZ': AzMessages(), // Azerbaijani (Azerbaijan)
  'be-BY': BeMessages(), // Belarusian (Belarus)
  'bs-BA': BsMessages(), // Bosnian (Bosnia and Herzegovina)
  'ca-ES': CaMessages(), // Catalan (Spain)
  'cs-CZ': CsMessages(), // Czech (Czech Republic)
  'da-DK': DaMessages(), // Danish (Denmark)
  'de-DE': DeMessages(), // German (Germany)
  'dv-MV': DvMessages(), // Divehi (Maldives)
  'en': EnMessages(), // English
  'en-US': EnMessages(), // English (United States)
  'es-ES': EsMessages(), // Spanish (Spain)
  'et-EE': EtMessages(), // Estonian (Estonia)
  'fa-IR': FaMessages(), // Persian (Iran)
  'fi-FI': FiMessages(), // Finnish (Finland)
  'fr-FR': FrMessages(), // French (France)
  'el-GR': GrMessages(), // Greek (Greece)
  'he-IL': HeMessages(), // Hebrew (Israel)
  'hi-IN': HiMessages(), // Hindi (India)
  'hr-HR': HrMessages(), // Croatian (Croatia)
  'hu-HU': HuMessages(), // Hungarian (Hungary)
  'id-ID': IdMessages(), // Indonesian (Indonesia)
  'it-IT': ItMessages(), // Italian (Italy)
  'ja-JP': JaMessages(), // Japanese (Japan)
  'km-KH': KmMessages(), // Khmer (Cambodia)
  'ko-KR': KoMessages(), // Korean (South Korea)
  'ku-TR': KuMessages(), // Kurdish (Turkey)
  'lv-LV': LvMessages(), // Latvian (Latvia)
  'mn-MN': MnMessages(), // Mongolian (Mongolia)
  'ms-MY': MsMyMessages(), // Malay (Malaysia)
  'my-MM': MyMessages(), // Burmese (Myanmar)
  'nb-NO': NbNoMessages(), // Norwegian Bokmål (Norway)
  'nl-NL': NlMessages(), // Dutch (Netherlands)
  'nn-NO': NnNoMessages(), // Norwegian Nynorsk (Norway)
  'pl-PL': PlMessages(), // Polish (Poland)
  'pt-BR': PtBrMessages(), // Portuguese (Brazil)
  'ro-RO': RoMessages(), // Romanian (Romania)
  'ru-RU': RuMessages(), // Russian (Russia)
  'rw-RW': RwMessages(), // Kinyarwanda (Rwanda)
  'sr-RS': SrMessages(), // Serbian (Serbia)
  'sv-SE': SvMessages(), // Swedish (Sweden)
  'ta-IN': TaMessages(), // Tamil (India)
  'th-TH': ThMessages(), // Thai (Thailand)
  'tk-TM': TkMessages(), // Turkmen (Turkmenistan)
  'tr-TR': TrMessages(), // Turkish (Turkey)
  'uk-UA': UkMessages(), // Ukrainian (Ukraine)
  'ur-PK': UrMessages(), // Urdu (Pakistan)
  'vi-VN': ViMessages(), // Vietnamese (Vietnam)
  'zh-TW': ZhHantMessages(), // Chinese (Traditional, Taiwan)
  'zh-CN': ZhHansMessages(), // Chinese (Simplified, China)
};

/// Sets the default [locale]. By default it is `en`.
///
/// Example
/// ```
/// setLocaleMessages('fr', FrMessages());
/// setDefaultLocale('fr');
/// ```
void setDefaultLocale(String locale) {
  assert(_lookupMessagesMap.containsKey(locale),
      '[locale] must be a registered locale');
  _default = locale;
}

/// Returns the supported locales
List<String> getSupportedLocales() => _lookupMessagesMap.keys.toList();

/// Sets a [locale] with the provided [lookupMessages] to be available when
/// using the [format] function.
///
/// Example:
/// ```dart
/// setLocaleMessages('fr', FrMessages());
/// ```
///
/// If you want to define locale message implement [LookupMessages] interface
/// with the desired messages
///
void setLocaleMessages(String locale, LookupMessages lookupMessages) {
  _lookupMessagesMap[locale] = lookupMessages;
}

/// Formats provided [date] to a fuzzy time like 'a moment ago'
///
/// - If [locale] is passed will look for message for that locale, if you want
///   to add or override locales use [setLocaleMessages]. Defaults to 'en'
/// - If [clock] is passed this will be the point of reference for calculating
///   the elapsed time. Defaults to DateTime.now()
/// - If [allowFromNow] is passed, format will use the From prefix, ie. a date
///   5 minutes from now in 'en' locale will display as "5 minutes from now"
/// - If [short] is passed, format will use the short format if possible
String format(DateTime date,
    {String? locale,
    DateTime? clock,
    bool allowFromNow = false,
    bool short = false}) {
  final _locale = locale ?? _default;
  if (_lookupMessagesMap[_locale] == null) {
    print(
        "Locale [$_locale] has not been added, using [$_default] as fallback. To add a locale use [setLocaleMessages]");
  }
  final _allowFromNow = allowFromNow;
  final messages = _lookupMessagesMap[_locale] ?? EnMessages();
  final _clock = clock ?? DateTime.now();
  var elapsed = _clock.millisecondsSinceEpoch - date.millisecondsSinceEpoch;

  String prefix, suffix;

  if (_allowFromNow && elapsed < 0) {
    elapsed = date.isBefore(_clock) ? elapsed : elapsed.abs();
    prefix = messages.prefixFromNow(short: short);
    suffix = messages.suffixFromNow(short: short);
  } else {
    prefix = messages.prefixAgo(short: short);
    suffix = messages.suffixAgo(short: short);
  }

  final num seconds = elapsed / 1000;
  final num minutes = seconds / 60;
  final num hours = minutes / 60;
  final num days = hours / 24;
  final num months = days / 30;
  final num years = days / 365;

  String result;
  if (seconds < 45) {
    result = messages.lessThanOneMinute(seconds.round(), short: short);
  } else if (seconds < 90) {
    result = messages.aboutAMinute(minutes.round(), short: short);
  } else if (minutes < 45) {
    result = messages.minutes(minutes.round(), short: short);
  } else if (minutes < 90) {
    result = messages.aboutAnHour(minutes.round(), short: short);
  } else if (hours < 24) {
    result = messages.hours(hours.round(), short: short);
  } else if (hours < 48) {
    result = messages.aDay(hours.round(), short: short);
  } else if (days < 30) {
    result = messages.days(days.round(), short: short);
  } else if (days < 60) {
    result = messages.aboutAMonth(days.round(), short: short);
  } else if (days < 365) {
    result = messages.months(months.round(), short: short);
  } else if (years < 2) {
    result = messages.aboutAYear(months.round(), short: short);
  } else {
    result = messages.years(years.round(), short: short);
  }

  return [prefix, result, suffix]
      .where((str) => str.isNotEmpty)
      .join(messages.wordSeparator());
}
