import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SharedSessao {
  static final FlutterSecureStorage _storage = FlutterSecureStorage();

  static Future<void> salvarToken(String token) async {
    await _storage.write(key: 'auth_token', value: token);
  }

  static Future<String?> carregarToken() async {
    return await _storage.read(key: 'auth_token');
  }

  static Future<bool> estaLogado() async {
    final token = await carregarToken();
    return token != null;
  }

  static Future<void> removerToken() async {
    await _storage.delete(key: 'auth_token');
  }
}
