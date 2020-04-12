import 'package:flutter/material.dart';

class SubClassRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.deepOrange,
      alignment: Alignment.center,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            "Mohamed Hassan",
            textDirection: TextDirection.ltr,
            style: new TextStyle(
              color: Colors.amber,
              fontSize: 12,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          new Text(
            "Mohamed Hassan",
            textDirection: TextDirection.ltr,
            style: new TextStyle(
              color: Colors.amber,
              fontSize: 12,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          new Text(
            "Mohamed Hassan",
            textDirection: TextDirection.ltr,
            style: new TextStyle(
              color: Colors.amber,
              fontSize: 12,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}


class SuperClassColum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.deepOrange,
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "my name is Mohamed Hassan ",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            new Text(
              "i`m 24 years old  ",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            new Text(
              "i live in sohag saqulta ",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            new Text(
              "i`m work android developer ",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.indigoAccent,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ));
  }
}

class ScaffoActionBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    OnClickAlarm(){

      print('Alarming !!!');
    }

    OnClickPrint(){

      print('Printing !!!');
    }

    OnClickMap(){

      print('Maping !!!');
    }

    return new Scaffold(
      backgroundColor: Colors.white70,
      appBar: new AppBar(title: new Text('Mohamed Bar'),
      backgroundColor: Colors.indigo,
      actions: <Widget>[
        new IconButton(icon: new Icon(Icons.access_alarm),
            onPressed: ()=> debugPrint('access_alarm')),
        new IconButton(icon: new Icon(Icons.print),
            onPressed: ()=> debugPrint('print')),
        new IconButton(icon: new Icon(Icons.map),
            onPressed: ()=> debugPrint('map'))

      ],),

      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new IconButton(icon: new Icon(Icons.watch),
                onPressed:  ()=> debugPrint('watch')),
            new IconButton(icon: new Icon(Icons.account_balance),
                onPressed:  ()=> debugPrint('account_balance')),
            new IconButton(icon: new Icon(Icons.account_box),
                onPressed:  ()=> debugPrint('account_box ')),
            new Text('Mohamed Haasn',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
            ),),
            new IconButton(icon: new Icon(Icons.add_a_photo),
                onPressed:  ()=> debugPrint('add_a_photo')),
            new InkWell(
              child: new Text('InWell',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
              ),),
              onDoubleTap: ()=> debugPrint('double tap'),
              onTap: ()=> debugPrint('single tap'),
            )

          ],

        ),

      ),

    );

  }


}