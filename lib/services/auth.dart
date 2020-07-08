import 'package:firebase_auth/firebase_auth.dart';
import 'package:gpprojectv01/models/student.dart';

class authService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  student _userfromfirebaseUser(FirebaseUser user) {
    return user != null ? student(uid: user.uid) : null;
  }

//login

//register

  Future register({String username, String email, String password}) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return _userfromfirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

// logout
  Future signout() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
