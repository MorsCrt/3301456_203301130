import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServices {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<User?> createUserMoreInfo(String name, String surname, var age,
      String phone, String country, String city, String district) async {
    await firestore.collection("Person").doc(auth.currentUser!.uid).set({
      'name': name,
      'surname': surname,
      'age': age,
      'phone': phone,
      'country': country,
      'city': city,
      'district': district
    });
    return null;
  }
}
