import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:willing_form/app/modules/admin_home_page/views/admin_home_page_view.dart';
import 'package:willing_form/model.dart';

class firebaseServices {
  final auth.FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  CollectionReference projects =
      FirebaseFirestore.instance.collection('All-Projects');
  User? firebaseUser = FirebaseAuth.instance.currentUser;
  Stream fyprojects =
      FirebaseFirestore.instance.collection("All-Projects").snapshots();
  //Google signin
  Future<User?> signInWithGoogle({required BuildContext context}) async {
    User? user;

    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
            await firebaseAuth.signInWithCredential(credential);

        user = userCredential.user;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          Get.snackbar("Error", 'User exist with different credentials',
              icon: Icon(Icons.error_outline_outlined));
        } else if (e.code == 'invalid-credential') {
          Get.snackbar("Error", 'Invalid credential provided',
              icon: Icon(Icons.error_outline_outlined));
        }
      } catch (e) {
        Get.snackbar("Error", 'Login failed',
            icon: Icon(Icons.error_outline_outlined));
      }
    }

    return user;
  }

  Users? _userFromFirebaseUser(auth.User? user) {
    if (user == null) {
      return null;
    }
    return Users(uid: user.uid, email: user.email);
  }

  //stream of users
  Stream<Users?>? get user {
    return firebaseAuth.authStateChanges().map(_userFromFirebaseUser);
  }

//signin with email & password
  Future<Users?> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user?.uid != null) {
        Get.offAll(AdminHomePageView());
        Get.snackbar(
          "Welcome",
          'Your are logged in successfully',
          backgroundColor: Colors.teal,
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar(
          'Sory',
          'No user found for that email',
          icon: Icon(Icons.error_outline_outlined),
          backgroundColor: Colors.red,
        );
      } else if (e.code == 'wrong-password') {
        Get.snackbar(
          'Sory',
          'Wrong password provided',
          icon: Icon(Icons.error_outline_outlined),
          backgroundColor: Colors.red,
        );
      }
    }
  }

  Future<void> signOut() async {
    try {
      return await firebaseAuth.signOut();
    } catch (error) {
      Get.snackbar('Error', 'Error logging out,try again later',
          icon: Icon(Icons.error_outline_outlined));
      return null;
    }
  }
}
