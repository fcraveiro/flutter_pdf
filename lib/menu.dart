import '/services/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Inicial'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              style: elevatedEstilo,
              onPressed: () {
                Get.toNamed("/pagina1/");
              },
              child: const Text('Invoice 1'),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: elevatedEstilo,
              onPressed: () {
                Get.toNamed("/pagina2/");
              },
              child: const Text('Pdf Fotos'),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: elevatedEstilo,
              onPressed: () {
                Get.toNamed("/homeview/");
              },
              child: const Text('Imagem Net'),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: elevatedEstilo,
              onPressed: () {
                Get.toNamed("/pdfpage/");
              },
              child: const Text('Invoice 2'),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: elevatedEstilo,
              onPressed: () {
                Get.toNamed("/diretorio/");
              },
              child: const Text('Diretorio'),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: elevatedEstilo,
              onPressed: () {
                Get.toNamed("/fotopdf/");
              },
              child: const Text('Foto Teste'),
            ),
          ],
        ),
      ),
    );
  }
}
