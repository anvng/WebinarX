import 'package:flutter_dotenv/flutter_dotenv.dart';

class FirebaseConfig {
  static String get googleClientId {
    return dotenv.env['GOOGLE_CLIENT_ID']!;
  }

  static String get firebaseApiKey {
    return dotenv.env['FIREBASE_API_KEY']!;
  }
}
