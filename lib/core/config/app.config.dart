// Importa o pacote principal do Flutter, que contém todos os
// widgets visuais (como Text, Button, AppBar, Scaffold, etc.)
// e o design padrão do Android chamado "Material Design".
import 'package:flutter/material.dart';

// Importa o arquivo onde está a classe "HomePage".
// Essa classe representa a tela inicial (página principal) do app.
import 'package:projeto_youtube/features/register/page/register.page.dart';

// Define uma nova classe chamada "AppConfig".
// Essa classe é um widget do tipo "StatelessWidget",
// ou seja, ela não guarda estado (não muda com o tempo).
class AppConfig extends StatelessWidget {
  // Construtor da classe "AppConfig".
  // O "super.key" é usado para passar a chave do widget para a classe pai.
  // É útil para o Flutter identificar e reconstruir widgets corretamente.
  const AppConfig({super.key});

  // O método "build" é obrigatório em todo widget.
  // Ele é responsável por "construir" o que aparece na tela.
  @override
  Widget build(BuildContext context) {
    // Retorna o widget principal do aplicativo: MaterialApp.
    // Ele é quem configura o app como um todo — título, tema,
    // rotas, e qual tela será mostrada primeiro.
    return MaterialApp(
      // Define o título do aplicativo (aparece em algumas partes,
      // como na lista de apps abertos no Android).
      title: 'Projeto YouTube',

      // Define qual será a primeira tela exibida ao abrir o app.
      // Aqui é a classe "HomePage", que está sendo importada lá em cima.
      home: const RegisterPage(),
    );
  }
}
