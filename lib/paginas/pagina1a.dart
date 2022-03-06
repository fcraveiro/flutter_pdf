import 'package:flutter/material.dart';
import '/services/model.dart';

class Pagina1a extends StatefulWidget {
  const Pagina1a({Key? key, required this.post}) : super(key: key);

  final ClassPaciente post;

  @override
  State<Pagina1a> createState() => _Pagina1aState();
}

late ClassPaciente post;
int index = 0;

class _Pagina1aState extends State<Pagina1a> {
  @override
  void initState() {
    post = widget.post;
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
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nome  ${post.pacNome.toString()}',
                    ),
                    Text(
                      'Endereço  ${post.pacEnde.toString()}',
                    ),
                    Text(
                      'Cidade    ${post.pacCity.toString()}',
                    ),
                    Text(
                      'Estado    ${post.pacEst.toString()}',
                    ),
                    Text(
                      'Cep       ${post.pacCep.toString()}',
                    ),
                    Text(
                      'Fone      ${post.pacFone.toString()}',
                    ),
                    Text(
                      'Celular   ${post.pacCel.toString()}',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
