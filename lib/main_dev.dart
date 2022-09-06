import 'package:flutter/material.dart';
import 'package:marketplace_app/common/environments/environment.dart';
import 'package:marketplace_app/common/environments/environment_dev.dart';
import 'package:marketplace_app/main.dart';
import 'package:marketplace_app/utils/injector.dart';

void main() {
  Environment.setCurrent(DevelopmentEnvironment());
  Injector.setup();
  runApp(MyApp());
}
