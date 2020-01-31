import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30,),
          _cardTipo2(),
          SizedBox(height: 30,),
          _cardTipo1(),
          SizedBox(height: 30,),
          _cardTipo2(),
          SizedBox(height: 30,),
          _cardTipo1(),
          SizedBox(height: 30,),
          _cardTipo2(),
          SizedBox(height: 30,),
          _cardTipo1(),
          SizedBox(height: 30,),
          _cardTipo2(),
          SizedBox(height: 30,),
          _cardTipo1(),
          SizedBox(height: 30,),
          _cardTipo2(),
          SizedBox(height: 30,),
          _cardTipo1(),
          SizedBox(height: 30,),
          _cardTipo2(),
          SizedBox(height: 30,),
          _cardTipo1(),
          SizedBox(height: 30,),
          _cardTipo2(),
          SizedBox(height: 30,),
        ],
      ),
    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 1.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text('Título de la tarjeta'),
            subtitle: Text('Aquí estamos con la descripción de la tarjeta que ustedes vean para que tengan una idea para mostrarles'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );

  }

  Widget _cardTipo2() {

    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://miro.medium.com/max/4320/0*QNdQhs_T3ffa6B0m.jpeg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://miro.medium.com/max/4320/0*QNdQhs_T3ffa6B0m.jpeg'),
          // ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('No tengo idea de que poner')
          )
        ],
      ),
    );

    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
    );
  }
}