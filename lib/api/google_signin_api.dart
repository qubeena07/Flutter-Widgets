import 'dart:developer';

import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInApi {
  final _googleSignIn = GoogleSignIn();

  login() async {
    var data = await _googleSignIn.signIn();
    log(data.toString());
    return data;
  }

  // static Future<GoogleSignInAccount?> login() => _googleSignIn.signIn();
}
