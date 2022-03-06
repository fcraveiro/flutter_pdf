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
              child: const Text('Future Builder'),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: elevatedEstilo,
              onPressed: () {
                Get.toNamed("/pagepdf/");
              },
              child: const Text('PDF'),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: elevatedEstilo,
              onPressed: () {
                Get.toNamed("/pagepdf/");
              },
              child: const Text('PDF 4'),
            ),
          ],
        ),
      ),
    );
  }
}
