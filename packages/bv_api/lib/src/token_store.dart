import 'package:bv_core/bv_core.dart';

/// Penyimpanan token (implementasi app: flutter_secure_storage — TAD §8.1).
abstract class TokenStore {
  Future<TokenPair?> read();
  Future<void> write(TokenPair pair);
  Future<void> clear();
}

/// Implementasi memori untuk test.
class InMemoryTokenStore implements TokenStore {
  TokenPair? _pair;

  @override
  Future<TokenPair?> read() async => _pair;

  @override
  Future<void> write(TokenPair pair) async => _pair = pair;

  @override
  Future<void> clear() async => _pair = null;
}
