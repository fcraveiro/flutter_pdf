import 'package:flutter/material.dart';
import '/paginas/pagina1a.dart';
import '/services/connect.dart';
import '/services/model.dart';

class Pagina1 extends StatefulWidget {
  const Pagina1({Key? key}) : super(key: key);

  @override
  _Pagina1State createState() => _Pagina1State();
}

class _Pagina1State extends State<Pagina1> {
  Conecta conectar = Conecta();

  @override
  Widget build(BuildContext context) {
    setState(() {});

    return Scaffold(
      appBar: AppBar(
        title: const Text('Read Future Builder'),
      ),
      body: FutureBuilder(
        future: conectar.getAll(),
        builder: (BuildContext context,
            AsyncSnapshot<List<ClassPaciente>> snapshot) {
          if (snapshot.hasData) {
            List<ClassPaciente>? posts = snapshot.data;
            return ListView(
              children: posts!
                  .map(
                    (ClassPaciente post) => ListTile(
                      title: Text(
                        post.pacNome.toString(),
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(post.pacFone.toString()),
                      leading: CircleAvatar(
                        child: Text(post.pacNome
                            .toString()
                            .toUpperCase()
                            .substring(0, 1)),
                      ),
                      onTap: () => detalhes(post),
                    ),
                  )
                  .toList(),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  detalhes(ClassPaciente post) {
    Navigator.of(context)
        .push(MaterialPageRoute(
            builder: (context) => Pagina1a(
                  post: post,
                )))
        .then((_) => setState(() {}));
  }
}
