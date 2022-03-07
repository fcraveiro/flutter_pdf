import '/pdfdir1/pagina1.dart';
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
  ];
}
