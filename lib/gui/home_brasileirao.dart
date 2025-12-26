import 'package:flutter/material.dart';
import '../controladores/home_controller.dart';
import 'package:brasileirao/modelos/time.dart';
import 'package:brasileirao/gui/time_dados.dart';

class HomeBrasileirao extends StatefulWidget{
  const HomeBrasileirao({super.key});

  @override
  State<HomeBrasileirao> createState() => _HomeBrasileiraoState();
}

class _HomeBrasileiraoState extends State<HomeBrasileirao> {
  var controller;

  @override
  void initState() {
    controller = HomeController();
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Brasileirão'),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext contexto, int time) {
            final List<Time> tabela = controller.tabela;
            return ListTile(
              leading: Image.network(tabela[time].brasao),
              title: Text(tabela[time].nome),
              trailing: Text(tabela[time].pontos.toString()),
              onTap: () {
                Navigator.push(contexto, MaterialPageRoute(
                    builder: (_) => TimeDados(
                      key: Key(tabela[time].nome),
                      time: tabela[time],)
                ));
              },
            );
          },
          separatorBuilder: (x, y) => Divider(),
          itemCount: controller.tabela.length,
          padding: EdgeInsets.all(16),
      ),
    );
  }
}