import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Test
  {
    'xdc16opa': {
      'en': 'Club name',
      'ar': 'اسم النادي',
    },
    'y7or5zxe': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Miscellaneous
  {
    'pcwlao24': {
      'en': '',
      'ar': '',
    },
    'y6p677f4': {
      'en': '',
      'ar': '',
    },
    'brw51jil': {
      'en': '',
      'ar': '',
    },
    'i58gq2vi': {
      'en': '',
      'ar': '',
    },
    'ujypo9zi': {
      'en': '',
      'ar': '',
    },
    'ki5i8sgb': {
      'en': '',
      'ar': '',
    },
    'drr2jte4': {
      'en': '',
      'ar': '',
    },
    '87ca0fvq': {
      'en': '',
      'ar': '',
    },
    'phdx9e1t': {
      'en': '',
      'ar': '',
    },
    'vq2ab7l9': {
      'en': '',
      'ar': '',
    },
    'f6kl67r5': {
      'en': '',
      'ar': '',
    },
    'qbfy63bc': {
      'en': '',
      'ar': '',
    },
    'gby4zyow': {
      'en': '',
      'ar': '',
    },
    'd2fklb28': {
      'en': '',
      'ar': '',
    },
    'qdbra9hn': {
      'en': '',
      'ar': '',
    },
    'gtwoxlw4': {
      'en': '',
      'ar': '',
    },
    'ris724zs': {
      'en': '',
      'ar': '',
    },
    '54utef0j': {
      'en': '',
      'ar': '',
    },
    'd5hln9rm': {
      'en': '',
      'ar': '',
    },
    '275ncnn3': {
      'en': '',
      'ar': '',
    },
    'kciezzwg': {
      'en': '',
      'ar': '',
    },
    'egbffl9j': {
      'en': '',
      'ar': '',
    },
    'f33lddun': {
      'en': '',
      'ar': '',
    },
    '0695z3eo': {
      'en': '',
      'ar': '',
    },
    'altvzd71': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
