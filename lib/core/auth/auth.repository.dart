import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepository {
  AuthRepository._internal();

  static final AuthRepository _instance = AuthRepository._internal();

  static AuthRepository get instance => _instance;

  final SupabaseClient _client = Supabase.instance.client;

  Future<void> register({
    required String email,
    required String password,
  }) async {
    await _client.auth.signUp(email: email, password: password,);
  }

  Future<void> login({required String email, required String password}) async {
    await _client.auth.signInWithPassword(email: email, password: password);
  }

  Future<void> logout() async {
    await _client.auth.signOut();
  }
}
