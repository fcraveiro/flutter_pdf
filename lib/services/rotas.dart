import 'package:flutter_pdf/paginas/pdfdir1/pagina1.dart';
import 'package:flutter_pdf/paginas/pdfdir2/home_view.dart';
import 'package:flutter_pdf/paginas/pdfdir3/pagina2.dart';
import 'package:flutter_pdf/paginas/pdfdir4/page/pdf_page.dart';
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
        page: () => const Pagina2(),
        transition: Transition.zoom),
    GetPage(
        name: '/homeview/',
        page: () => const HomeView(),
        transition: Transition.zoom),
    GetPage(
        name: '/pdfpage/',
        page: () => const PdfPage(),
        transition: Transition.zoom),
  ];
}
