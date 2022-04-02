class Env {
  /// the variable to define which server is to use
  /// can be *dev, test or prod
  static const String servermode =
      String.fromEnvironment('build', defaultValue: 'dev');

  static const String apiKey = String.fromEnvironment('apiKey',
      defaultValue: '08e7fca767ba444e93de66b948606021');
}
