// ignore_for_file: import_of_legacy_library_into_null_safe, file_names, prefer_typing_uninitialized_variables, unused_local_variable, avoid_print, avoid_function_literals_in_foreach_calls
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DatabaseCon {
  static FirebaseFirestore firestore = FirebaseFirestore.instance;
}

class UploadFile {
  static List<dynamic> list = [];
  static late bool valid = true;
  static Future<void> read(String path) async {
    var bytes = File(path).readAsBytesSync();
    var excel = Excel.decodeBytes(bytes);
    for (var table in excel.tables.keys) {
      if (excel.tables[table]!.maxCols != 3) {
        valid = false;
        Get.snackbar('Sory', 'Incorrect file provided');
      } else {
        list = [];
        excel.tables[table]!.removeRow(0);
        excel.tables[table]!.removeColumn(0);

        for (var row in excel.tables[table]!.rows) {
          if (row[0] != null) {
            list.add(row);
          }
        }
      }
      if (valid == true) {
        print('before uploast list called');
        uploadList();
      }
    }
  }

  static void uploadList() async {
    print('uploast list called');
    var projects = DatabaseCon.firestore.collection("projects");
    print(projects);
    var existing = [];
    await projects.get().then((value) {
      value.docs.forEach((element) {
        existing.add(element["title"].toString());
      });
    });
    if (list.isNotEmpty) {
      for (var item in list) {
        if (!existing.contains(item[0])) {
          projects.add({"title": item[0], "status": item[1]});
        }
      }
    } else {
      for (var item in list) {
        projects.add({"title": item[0], "status": item[1]});
      }
    }

    Get.snackbar('Success', 'File uploaded successfuly!',
        backgroundColor: Colors.teal);
  }
}
