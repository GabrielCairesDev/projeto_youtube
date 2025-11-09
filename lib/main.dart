// Importa o pacote base do Flutter que contém os
// widgets visuais (botões, textos, colunas, linhas, etc.)
// e o sistema de design Material (padrão do Android).
import 'package:flutter/material.dart';

// Importa o arquivo onde está definida a classe MyApp,
// que será o widget principal do aplicativo.
import 'package:projeto_youtube/core/config/app.config.dart';

// Esta é a função principal do programa. Todo app
// em Dart/Flutter começa executando a função main().
void main() {
  // runApp é a função que inicializa o Flutter e exibe
  // o primeiro widget do app na tela. Aqui estamos passando
  // o MyApp, que é o widget raiz (o "app em si").
  //
  // O "const" indica que esse widget é imutável, ou seja,
  // não muda depois de criado — isso ajuda na performance.
  runApp(const AppConfig());
}

// update 1.2
