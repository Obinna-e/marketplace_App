import 'package:dio/dio.dart';
import 'package:marketplace_app/services/apiClient.dart';
import '../models/nftModel.dart';

class NftRepository {
  Future<List<NftModel>> getNft() async {
    try {
      final result = await ApiClient().getData(ApiConst.path);
      final List data = result["data"]; //change to match nftjson
      return data.map((e) => NftModel.fromJson(e)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
