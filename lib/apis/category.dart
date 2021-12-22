import 'package:flutter_dotenv/flutter_dotenv.dart';

String get baseURL {
  String baseUrl = dotenv.get('SERVER_HOST', fallback: '');

  return baseUrl;
}
