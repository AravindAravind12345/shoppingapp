import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<void> signOutFromGoogle() async {
  try {
    // Sign out from Firebase
    await FirebaseAuth.instance.signOut();

    // Also sign out from Google
    final googleSignIn = GoogleSignIn();
    if (await googleSignIn.isSignedIn()) {
      await googleSignIn.signOut();
    }

    print('User signed out successfully');
  } catch (e) {
    print('Error signing out: $e');
  }
}
