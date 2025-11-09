class ValidatorUtils {
  static String? email(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Informe um e-mail.';
    }
    final emailRegEx = RegExp(r'^[\w\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z]{2,}$');
    if (!emailRegEx.hasMatch(value.trim())) {
      return 'O e-mail é inválido!';
    }
    return null;
  }

  static String? pass(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Informe uma senha.';
    }
    final pass = value.trim();
    if (pass.length < 8) {
      return 'A senha deve ter ao menos 8 caracteres.';
    }

    final hasUpper = RegExp(r'[A-Z]').hasMatch(pass);
    final hasDigit = RegExp(r'\d').hasMatch(pass);
    final hasSymbol = RegExp(r'[^A-Za-z0-9]').hasMatch(pass);

    if (!hasUpper) {
      return 'Inclua ao menos uma letra maiúscula.';
    }
    if (!hasDigit) {
      return 'Inclua ao menos um número.';
    }
    if (!hasSymbol) {
      return 'Inclua ao menos um símbolo (ex: !@#\$%).';
    }
    return null;
  }

  static String? confirmPass(String? value, String pass){
    if(value != pass){
      return 'Senhas não conferem!';
    }
    return null;
  }
}
