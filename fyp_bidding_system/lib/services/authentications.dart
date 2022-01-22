import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_database/firebase_database.dart';
import 'package:fyp_bidding_system/models/user.dart';

 class AuthService{
   final auth.FirebaseAuth _firebaseAuth =auth.FirebaseAuth.instance;
//current user id
   currentUser() {
     final auth.User? user = _firebaseAuth.currentUser;
     final uid = user!.uid.toString();
     return uid;
   }
   // create user obj based on firebase user
   User? _userFromFirebaseUser(auth.User? user) {
     if (user == null) {
       return null;
     }
     return User(uid: user.uid,email:user.email);
   }
   //stream of users
   Stream<User?>? get user{
     return _firebaseAuth.authStateChanges().map(_userFromFirebaseUser);
   }
   //signin with email & password
   Future <User?>signInWithEmailAndPassword(String email,
       String password,)async{
     final credential=await _firebaseAuth.signInWithEmailAndPassword(
         email: email,
         password: password,
     );
     return _userFromFirebaseUser(credential.user);
   }
       //create user with email and password
   Future <User?>createUserWithEmailAndPassword(String email,
       String password,)async{
     final credential=await _firebaseAuth.createUserWithEmailAndPassword(
       email: email,
       password: password,
     );
     return _userFromFirebaseUser(credential.user);
   }

   //sinin anon
// Future SignInAnon() async{
//   try{
//     var result=await _auth.signInAnonymously();
//     var user= result.user as UserCredential;
//    return _userFromFirebaseUser(user);
//   }catch(e){
//     print(e.toString());
//     return null;
//   }
// }

 //Reister with email % password
 //signout
   Future<void> signOut() async {
     try {
       return await _firebaseAuth.signOut();
     } catch (error) {
       print(error.toString());
       return null;
     }
   }

 }