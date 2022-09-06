import 'package:dio/dio.dart';
import 'package:kiwi/kiwi.dart';
import 'package:marketplace_app/common/environments/environment.dart';
import 'package:marketplace_app/services/mockInterceptors.dart';

class Injector {
  static KiwiContainer container = KiwiContainer();
  static final T Function<T>([String name]) resolve = container.resolve;

  static void setup() {
    container = KiwiContainer();

    _common();
  }

  static void _commonDevelopment() {
    container.registerInstance(
      <Interceptor>[
        if (Environment.current!.useMockData) MockInterceptor(),
      ],
    );
  }

  static void _commonProduction() {
    container.registerInstance(
      <Interceptor>[],
    );
  }

  static void _common() {
    container.registerSingleton(
      (container) => Dio(BaseOptions(
          //TODO: change base url if one env requires it
          // baseUrl: Environment.current!.baseUrl,

          ))
        ..interceptors.addAll(
          container.resolve(),
        ),
    );
  }
}
