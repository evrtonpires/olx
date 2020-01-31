import 'package:flutter/cupertino.dart';

String getSanitizedText({@required String text}) {
  return text.replaceAll(RegExp(r'[^\d]'), "");
}
