import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Componentes'),
        backgroundColor: Colors.blue,
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

    //print(menuProvider.opciones);
    
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot){
        
        print(snapshot.data);

        return ListView(
          children: _listaItems(snapshot.data, context),
        );

      },
    );

  }

  List<Widget> _listaItems( List<dynamic> data, BuildContext context ) {
    
    final List<Widget> opciones = [];

    data.forEach((opt){

      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue,),
        onTap: (){

          Navigator.pushNamed(context, opt['ruta']);

          // final route = MaterialPageRoute(
          //   builder: (context) => AlertPage()
          // );
          // Navigator.push(context, route);

        },
      );

      opciones..add( widgetTemp)..add(Divider());

    });

    return opciones;

  }
}