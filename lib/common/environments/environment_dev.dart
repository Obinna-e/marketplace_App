import 'environment.dart';

class DevelopmentEnvironment implements Environment {
  @override
  bool get useMockData => true;

  @override
  String get apiUrl => '';
}
