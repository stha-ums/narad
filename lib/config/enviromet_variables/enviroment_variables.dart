class Env {
  /// the variable to define which server is to use
  /// can be *dev, test or prod
  static const String servermode = String.fromEnvironment('build');
  static const String apiKey = String.fromEnvironment('apiKey');
}
