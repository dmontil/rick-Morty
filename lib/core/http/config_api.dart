import 'endpoints.dart';

class ConfigApi {
  ConfigApi();

  String get url {
    return Endpoints.baseURl;
  }

  Map<String, String> get headers {
    return {};
  }
}
