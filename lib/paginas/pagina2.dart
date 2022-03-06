import 'package:flutter/material.dart';
import '/services/model.dart';

class Pagepdf extends StatefulWidget {
  const Pagepdf({Key? key}) : super(key: key);

  @override
  State<Pagepdf> createState() => _PagepdfState();
}

late ClassPaciente post;
int index = 0;

class _PagepdfState extends State<Pagepdf> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes'),
      ),
      body: Center(
        heightFactor: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('a'),
          ],
        ),
      ),
    );
  }
}


/*
    share();
    // Printing.layoutPdf(onLayout: (PdfPageFormat format) async {
    //   return pdf.save();
    // });
  }


  Future<void> share() async {
    Directory documentDirectory = await
    getApplicationDocumentsDirectory();
    String documentPath = documentDirectory.path;
    String filename = "demo.pdf";
    File file = File("$documentPath/$filename");
    file.writeAsBytesSync(pdf.save());
    Share.shareFiles(["$documentPath/$filename"], text: "text");
  }

  */
