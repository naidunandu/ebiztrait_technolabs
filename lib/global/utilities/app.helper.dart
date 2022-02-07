import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

final _storage = GetStorage();

//HELPERS TO MANAGE LOCAL STORAGE & ALERTS
class AppHelper{

  dynamic getStorage(String name) {
    dynamic info = _storage.read(name) ?? '';
    return info != '' ? json.decode(info) : info;
  }

  Future<dynamic> writeStorage(String key, dynamic value) async {
    dynamic object = value != null ? json.encode(value) : value;
    return await _storage.write(key, object);
  }

  dynamic removeSpecificKeyStorage(String key) {
    _storage.remove(key);
  }

  clearStorage() {
    _storage.erase();
  }

  successMessage(message) {
    return Get.snackbar('success', message, backgroundColor: Colors.green, colorText: Colors.white);
  }

  errorMessage(message) {
    return Get.snackbar('error', message, backgroundColor: Colors.red, colorText: Colors.white);
  }

  alertMessage(message) {
    return Get.snackbar('alert', message, backgroundColor: Colors.yellow, colorText: Colors.black);
  }
}