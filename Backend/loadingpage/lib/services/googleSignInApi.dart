import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInApi {
  static final _googleSignIn = GoogleSignIn();

  static Future<GoogleSignInAccount?> login() => _googleSignIn.signIn();
  static Future logout() => _googleSignIn.disconnect();
}
// keytool -genkey -v -keystore C:\Users\Dell\Downloads\mykey.jks ^ -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 ^ -alias androiddebugkey
