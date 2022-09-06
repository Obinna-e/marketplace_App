import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:marketplace_app/models/nftModel.dart';

class ApiClient {
  Future getData(String path) async {
    try {
      final response =
          await Dio(BaseOptions(baseUrl: ApiConst.baseUrl)).get(path);
      return response.data;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }
}
