enum Environment { dev, staging, prod }

class AppConfig {
  static const Environment currentEnv = Environment.dev;

  static String get baseUrl {
    switch (currentEnv) {
      case Environment.dev:
        return "https://dev.api.example.com";
      case Environment.staging:
        return "https://staging.api.example.com";
      case Environment.prod:
        return "https://api.example.com";
    }
  }
}
