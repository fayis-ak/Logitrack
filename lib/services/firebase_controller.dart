import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:logitrack/models/addproductorder.dart';
import 'package:logitrack/models/addressmodel.dart';
import 'package:logitrack/models/deliveryboys.dart';

import 'package:logitrack/models/prductmodel.dart';
import 'package:logitrack/models/user_model.dart';

import 'package:logitrack/utils/toast.dart';

class FirebaseController with ChangeNotifier {
  final db = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  String suffix = 'gm';
  DateTime now = DateTime.now();

  // cntroller

  final Pickeupname = TextEditingController();
  final pickupnumber = TextEditingController();
  final pickupadress = TextEditingController();
  final deliveryname = TextEditingController();
  final deliverynumber = TextEditingController();
  final deliveryadress = TextEditingController();
  final producttype = TextEditingController();
  final prodcutweight = TextEditingController();

  clearcontroller() {
    Pickeupname.clear();
    pickupnumber.clear();
    pickupadress.clear();
    deliveryname.clear();
    deliverynumber.clear();
    deliveryadress.clear();
    producttype.clear();
    prodcutweight.clear();
  }

  // ========create

  Future adduser(String uid, usermodel) async {
    db.collection('Users').doc(uid).set(usermodel.tojson(uid));
  }

  Future<void> logout(BuildContext context) async {
    try {
      await auth.signOut();
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('logout succes')));
    } catch (e) {
      log('error logout $e');
    }
  }

  UserModel? userModel;
  Future<bool> fetchSelectedUSerdata(uid) async {
    DocumentSnapshot<Map<String, dynamic>> snapshot =
        await db.collection('Users').doc(uid).get();

    if (snapshot.exists) {
      userModel = UserModel.fromJson(snapshot.data()!);
      return true;
    } else {
      return false;
    }
  }

  Future addorderdetail(Addproductmodel addpdmodel) async {
    final addorderdet = db.collection('addNewOrder').doc();

    addorderdet.set(addpdmodel.tojson(addorderdet.id));
  }

  Future addadres(AddresModel addresModel) async {
    final docs = db
        .collection('Users')
        .doc(auth.currentUser!.uid)
        .collection('address')
        .doc();
    await docs.set(addresModel.toJson(docs.id));
    notifyListeners();
  }

  AddresModel? adremodel;
  Future<AddresModel?> fetchadress() async {
    QuerySnapshot<Map<String, dynamic>> snapshot = await db
        .collection('Users')
        .doc(auth.currentUser!.uid)
        .collection('address')
        .get();

    var data = snapshot.docs.first.data();
    return AddresModel.fromJson(data);
  }

  List<Addproductmodel> productmodl = [];
  Future fetchtracking() async {
    QuerySnapshot<Map<String, dynamic>> snapshotd = await db
        .collection('addNewOrder')
        .where('userid', isEqualTo: auth.currentUser!.uid)
        .get();

    productmodl = snapshotd.docs.map((e) {
      return Addproductmodel.fromJson(e.data());
    }).toList();

    log(' product model    ${productmodl.length.toString()}');
  }

  List<Company> company = [];
  Future companyfetch() async {
    Stream<QuerySnapshot> snapshot = await db.collection('Company').snapshots();

    snapshot.listen((snapshot) {
      company = snapshot.docs.map((docs) {
        return Company.fromJson(docs.data() as Map<String, dynamic>);
      }).toList();
    });

    // company = snapshot.docs.map((e) {
    //   return Company.fromJson(e.data());
    // }).toList();
    // log(' ith mode company lenght${company.length.toString()}');
  }

  Future addcompany(
    Company productmodel,
    BuildContext context,
  ) async {
    try {
      final com = await db.collection('Company').doc();

      com.set(productmodel.tojson(com.id));
    } catch (e) {
      errortoast(context, "Invalid account information");
    }
  }

  // store provider data

  int prdctprice(int companyPrice) {
    double weight;
    try {
      weight = double.parse(prodcutweight.text);
    } catch (e) {
      print("Invalid weight input");
      return 0;
    }

    int sum = (companyPrice * weight).toInt();

    notifyListeners();

    return sum;
  }

  // delivery boys db

  Future addDelivery(
    DeliveryBoys deliveryBoys,
  ) async {
    var snapshot =
        await db.collection('DeliveryBoys').doc(auth.currentUser!.uid);
    snapshot.set(deliveryBoys.tojson(snapshot.id));
  }

  List<Addproductmodel> deliveryaccesprdoct = [];
  Future fetchingproductorder() async {
    Stream<QuerySnapshot> snapshotd = db.collection('addNewOrder').snapshots();

    snapshotd.listen((snapshot) {
      deliveryaccesprdoct = snapshot.docs.map((doc) {
        return Addproductmodel.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();
    }, onError: (error) {
      log('Error fetching product orders: $error');
    });
  }

  Addproductmodel? deliverydetails;
  Future deliverystatus(id) async {
    final snap = await db.collection('addNewOrder').doc(id).get();

    if (snap.exists) {
      deliverydetails = Addproductmodel.fromJson(snap.data()!);
    }
  }

  // fetching were ordertype
  List<Addproductmodel> orderstatus = [];
  Future fetchingorderstatus(String were) async {
    QuerySnapshot<Map<String, dynamic>> snapshotd = await db
        .collection('addNewOrder')
        .where('orderstatus', isEqualTo: were)
        .get();

    orderstatus = snapshotd.docs.map((e) {
      return Addproductmodel.fromJson(e.data());
    }).toList();

    log(' product model    ${orderstatus.length.toString()}');
  }

  // fetch deliveryboy
  DeliveryBoys? deliveryboy;
  Future fetchigdelivery(uid) async {
    final snapshot = await db.collection('DeliveryBoys').doc(uid).get();

    if (snapshot.exists) {
      deliveryboy = DeliveryBoys.fromJson(snapshot.data()!);
    }
  }
}
