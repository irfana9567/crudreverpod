import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud/core/providers/firebase_providers.dart';
import 'package:crud/main.dart';
import 'package:crud/models/model1.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final AddingRepositoryProvider=Provider((ref) => AddingRepository(firestore: ref.watch(fireStoreProvider)));

class AddingRepository{
  final FirebaseFirestore _firestore;
  AddingRepository({required FirebaseFirestore firestore}):_firestore=firestore;
  
  CollectionReference get _users => _firestore.collection("users");
  // CollectionReference get _users1 => _firestore.collection("users").doc('users).delete();
  add(name,email,password){
    UserModel userData=UserModel(
        name: name,
        email: email,
        password: password
    );
    _users.add(userData.toMap());
  }
}