/*

import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';

class Detalhes extends StatefulWidget {
  const Detalhes({Key? key}) : super(key: key);

  @override
  State<Detalhes> createState() => _DetalhesState();
}


late File filePath2;

class _DetalhesState extends State<Detalhes> {
  var _openResult = 'Unknown';

  @override
  Widget build(BuildContext context) {
    log(filePath2.toString());
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('open result: $_openResult\n'),
              TextButton(
                child: const Text('Tap to open file'),
                onPressed: () => openFile(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> openFile() async {
//    var filePath = r'/storage/emulated/0/update.apk';

//    if (result != null) {
//      filePath = result.files.single.path;
//    } else {
//      // User canceled the picker
//    }

    log('VEIO ${filePath2.toString()}');
    final _result = await OpenFile.open(filePath2.path);
    // ignore: avoid_print
    print(_result.message);
    setState(() {
      _openResult = "type=${_result.type}  message=${_result.message}";
    });
  }
}
*/