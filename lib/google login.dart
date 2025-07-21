// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class GoogleSignInProvider {
//   final GoogleSignIn _googleSignIn = GoogleSignIn();
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   Future<UserCredential?> signInWithGoogle() async {
//     try {
//       final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
//       if (googleUser == null) return null;

//       final GoogleSignInAuthentication googleAuth =
//           await googleUser.authentication;

//       final credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );
//       return await _auth.signInWithCredential(credential);
//     } catch (e) {
//       print("Google Sign-In Error: $e");
//       return null;
//     }
//   }
//   // Future<void> signOut() async {
//   //   await _googleSignIn.signOut();
//   //   await _auth.signOut();
//   // }

  
// }








// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class Googlelogin{

// final GoogleSignIn signin = GoogleSignIn();
// final FirebaseAuth auth =FirebaseAuth.instance;

// Future<UserCredential?> signinnamma() async{
//   try{

//     final GoogleSignInAccount? googleUser = await signin.signIn();

//     if(googleUser==null)return null;

//     final GoogleSignInAuthentication authe = await googleUser.authentication;

//     final credit = GoogleAuthProvider.credential(
//       accessToken: authe.accessToken,
//       idToken: authe.idToken
//     );
//     return await auth.signInWithCredential(credit);

//   }
//   catch(e){
//   print("print the error $e");
//   return null;

//   }

// }

// }