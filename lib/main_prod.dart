import 'package:flutter/material.dart';
import 'package:marketplace_app/common/environments/environment.dart';
import 'package:marketplace_app/common/environments/environment_prod.dart';
import 'package:marketplace_app/main.dart';
import 'package:marketplace_app/utils/injector.dart';

void main() {
  Environment.setCurrent(ProductionEnvironment());
  Injector.setup();
  runApp(MyApp());
}
