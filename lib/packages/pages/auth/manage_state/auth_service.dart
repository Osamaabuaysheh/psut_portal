import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:psut_portal/packages/pages/HomePageController/views/home.dart';
import 'package:psut_portal/packages/pages/auth/Model/user_auth.dart';
import 'package:http/http.dart' as http;

class AuthService extends ChangeNotifier {
  bool isLoading = false;
  String errorMessage = '';

  bool go = false;

  set setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  set setMessage(String value) {
    errorMessage = value;
    notifyListeners();
  }

  set setGo(bool val) {
    go = val;
    notifyListeners();
  }

  get getGo => go;

  //* FireBase
  final FirebaseAuth _fireBaseInstance = FirebaseAuth.instance;

  //* Register
  Future<User?> register({required ModelUserAuth data}) async {
    try {
      setLoading = true;
      UserCredential _authResult =
          await _fireBaseInstance.createUserWithEmailAndPassword(
              email: data.email, password: data.password);
      late User? _user;
      if (_authResult.user?.uid.isNotEmpty ?? false) {
        _user = _authResult.user!;
        setLoading = false;
      }
      return _user;
    } on SocketException {
      setLoading = false;
      setMessage = "No Internet,Please Connect to internet";
      return null;
    } on FirebaseAuthException {
      setLoading = false;
      setMessage = '';
      return null;
    } catch (error) {
      setLoading = false;
      setMessage = error.toString();
      return null;
    }
  }

  //* Login
  Future<User?> login({required ModelUserAuth data}) async {
    try {
      setLoading = true;
      UserCredential _authResult =
          await _fireBaseInstance.signInWithEmailAndPassword(
              email: data.email, password: data.password);

      late User? _user;
      if (_authResult.user?.uid.isNotEmpty ?? false) {
        _user = _authResult.user!;
        setLoading = false;
      }
      return _user;
    } on SocketException {
      setLoading = false;
      setMessage = "No Internet,Please Connect to internet";
      return null;
    } on FirebaseAuthException {
      setLoading = false;
      setMessage = '';
      return null;
    } catch (error) {
      setLoading = false;
      setMessage = error.toString();
      return null;
    }
  }

  //* Reset Password
  Future<bool> resetPassword({required ModelUserAuth data}) async {
    try {
      setLoading = false;
      await _fireBaseInstance.sendPasswordResetEmail(email: data.email);
      setLoading = true;
      return true;
    } on SocketException {
      setLoading = false;
      setMessage = "No Internet,Please Connect to internet";
      return false;
    } on FirebaseAuthException {
      setLoading = false;
      setMessage = '';
      return false;
    } catch (error) {
      setLoading = false;
      setMessage = error.toString();
      return false;
    }
  }

  //* Logout
  Future<void> signOut() async {
    await _fireBaseInstance.signOut();
  }

  //* Get User Data
  User get userData => _fireBaseInstance.currentUser!;

  Stream<User> get userStream =>
      _fireBaseInstance.authStateChanges().map((User? user) => user!);

  Future<void> loginStudent({required ModelUserAuth data}) async {
    var response = await http.post(
      Uri.parse('http://10.0.2.2:8000/login_Student'),
      body: {'username': data.email, 'password': data.password},
    );
    try {
      if (response.statusCode == 200) {}
    } catch (e) {}
  }
}
