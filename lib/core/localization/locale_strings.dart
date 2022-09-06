import 'package:get/get.dart';
import 'package:gtc_rider/core/localization/ar.dart';
import 'package:gtc_rider/core/localization/en.dart';

class LocaleString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en,
        'ar': ar,
      };
}
