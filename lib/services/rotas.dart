import 'package:flutter_future_builder/paginas/pagina1.dart';
import 'package:flutter_future_builder/paginas/pagina2.dart';
import 'package:flutter_future_builder/pdfdir/chama.dart';
import '/menu.dart';
import 'package:get/get.dart';

rotas() {
  return [
    GetPage(name: '/', page: () => const Menu()),
    GetPage(
        name: '/menu/', page: () => const Menu(), transition: Transition.zoom),
    GetPage(
        name: '/pagina1/',
        page: () => const Pagina1(),
        transition: Transition.zoom),
    GetPage(
        name: '/pagina2/',
        page: () => const Pagepdf(),
        transition: Transition.zoom),
    GetPage(
        name: '/pagepdf/',
        page: () => const Chama(),
        transition: Transition.zoom),
  ];
}
