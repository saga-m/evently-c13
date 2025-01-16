import 'package:firebase_auth/firebase_auth.dart';

class AuthResponse {
  UserCredential? userCredential;
  Error? error;

  AuthResponse({this.userCredential, this.error});
}

class Error {
  String? errorMessage;
  Exception? exception;

  Error({this.exception, this.errorMessage});
}
