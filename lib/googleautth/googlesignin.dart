
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Googlelog{

  final GoogleSignIn googlesignin = GoogleSignIn();
  final FirebaseAuth fireauth = FirebaseAuth.instance;

Future<UserCredential?> google() async{

 try {
  final GoogleSignInAccount? id = await googlesignin.signIn();
  if(id==null)return null;

  final GoogleSignInAuthentication auth = await id.authentication;

  final credit = GoogleAuthProvider.credential(
        idToken: auth.idToken,
        accessToken: auth.accessToken
  );

  return await fireauth.signInWithCredential(credit);

 }
 catch(e){
  print("it has an error $e");
  return null;
 }
}

}