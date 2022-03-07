import 'dart:developer';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

var products = List.generate(
  20,
  (index) => {
    "id": "${index + 1}",
    "name": "Produk ke - ${index + 1}",
    "desc": DateTime.now().toString(),
  },
);

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: ElevatedButton(
        onPressed: () => getPDF(),
        child: const Image(
            image: NetworkImage(
                'https://pfadasbrbkwhqcecijnp.supabase.in/storage/v1/object/public/fotos/2022-02-28 13:58:03.796124.jpg')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => getPDF(),
        child: const Icon(Icons.note),
      ),
    );
  }

  void getPDF() async {
    final pdf = pw.Document();
    var dataFont = await rootBundle.load("assets/fonts/Roboto-Regular.ttf");
    var myFont = pw.Font.ttf(dataFont);
//    var dataImage = await rootBundle.load("assets/imagens/image.jpg");
//    var myImage = dataImage.buffer.asUint8List();
//  Uint8List bytes = await pdf.save();
//  const netImage = NetworkImage('https://www.nfet.net/nfet.jpg');
/*
    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return [
            pw.ClipRRect(
              horizontalRadius: 20,
              verticalRadius: 20,
              child: pw.Container(
                width: 350,
                height: 270,
                child: pw.Image(
                  pw.MemoryImage(myImage),
                  fit: pw.BoxFit.cover,
                ),
              ),
            ),
            pw.SizedBox(height: 20),
            pw.Container(
              color: PdfColors.red800,
              alignment: pw.Alignment.center,
              width: double.infinity,
              child: pw.Text(
                "MY PRODUCTS",
                style: pw.TextStyle(
                  fontSize: 50,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.white,
                  font: myFont,
                ),
              ),
            ),
            pw.SizedBox(height: 20),
            pw.Column(
              children: products
                  .map(
                    (e) => pw.Text(
                      "ID : ${e['id']} - ${e['name']}\n${e['desc']}\n\n",
                      style: pw.TextStyle(
                        fontSize: 30,
                        font: myFont,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ];
        },
      ),
    ); // Page
*/
    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Text('Hello World',
                style: pw.TextStyle(font: myFont, fontSize: 40)),
          ); // Center
        })); // Pa

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/example2.pdf');
    File newImage = await file.writeAsBytes(await pdf.save());
    log(newImage.toString());
    log(file.toString());
//    await OpenFile.open(file.path);

//    var _openResult = 'Unknown';
//    var filePath =
//        r'/data/user/0/com.example.pdfteste/app_flutter/example2.pdf';

    final file2 = File('${dir.path}/example2.pdf');
    final url = file2.path;
    log(url.toString());

    await OpenFile.open(url);

    File tmpFile = File(file2.path);
    tmpFile = await tmpFile.copy(tmpFile.path);
    log(tmpFile.toString());
    final File newImage2 = await file.copy(url);
    log(newImage2.toString());
/*
final String path = await getApplicationDocumentsDirectory().path;
final fileName = basename(file.path);
final File localImage = await file.copy('$path/$fileName');

*/
//    log(_result.message);

//    setState(() {
//      _openResult = "type=${_result.type}  message=${_result.message}";
//    });

//  final file = File("example.pdf");
//  await file.writeAsBytes(bytes);
//  final output = await getTemporaryDirectory();
//  final file3 = File("${output.path}/example2.pdf");
//  log('File 3 ${file3.toString()}');
//  final file4 = File("example.pdf");
//  await file.writeAsBytes(await pdf.save());
//  log('VEIO ${file.toString()}');
//  final _result = await OpenFile.open(file.path);
//  print(_result.message);
  }
}
