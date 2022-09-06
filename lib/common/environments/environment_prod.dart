import 'environment.dart';

class ProductionEnvironment implements Environment {
  @override
  bool get useMockData => false;

  @override
  String get apiUrl => throw UnimplementedError();
}
