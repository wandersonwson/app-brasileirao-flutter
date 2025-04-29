import 'package:flutter/material.dart';
import '../controladores/home_controller.dart';

class HomeBrasileirao extends StatelessWidget{
  var controller = HomeController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Brasileirão'),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext contexto, int i) {
            final tabela = controller.tabela;
            return ListTile(
              leading: Image.network(tabela[i].brasao),
              title: Text(tabela[i].nome),
              trailing: Text(tabela[i].pontos.toString()),
            );
          },
          separatorBuilder: (x, y) => Divider(),
          itemCount: controller.tabela.length,
          padding: EdgeInsets.all(16),
      ),
    );
  }
}