import 'dart:async';
import 'dart:async';
import 'dart:core';
import 'dart:core';

import 'package:flutter/cupertino.dart';
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

class HomeClick extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeClickLister();
  }
}

class HomeClickLister extends State<HomeClick> {


  Future<void> _neverSatisfied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Hello Mohamed Hassan'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('You will have Dialog in your app. ',style: new TextStyle(fontSize: 15),),
                Text('You\’re like the app. I’m never have seen app like this. ',style: new TextStyle(fontSize: 15),),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                'ok',
                style: new TextStyle(
                  fontSize: 17,
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void OnChangeValue(String text) {
    setState(() {
      MyName = 'OnChange :  $text';
    });

  }

  Future ShowSimpleDialog() async{
    switch(
    await showDialog(context: context,
    builder: (BuildContext context){

      return SimpleDialog(title: new Text('data'),
      children: <Widget>[

        SimpleDialogOption(
          onPressed: () { Navigator.pop(context, OnChangeValue('yes')); },
          child: const Text('yes'),
        ),
        SimpleDialogOption(
          onPressed: () { Navigator.pop(context, OnChangeValue('no')); },
          child: const Text('no'),
        ),
        SimpleDialogOption(
          onPressed: () { Navigator.pop(context, OnChangeValue('maybe')); },
          child: const Text('maybe'),
        ),


      ],

      );

      })

    )




  }
  void ShowBottomSheet() {

    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return new Container(
            padding: EdgeInsets.all(22.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  'Welcome Mohamed Hassan',
                  style: new TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 17,
                      color: Colors.indigo),
                ),
                new FlatButton(
                    onPressed: () => Navigator.pop(context),
                    child: new Text('Close'))
              ],
            ),
          );
        });
  }


  String name = '';
  String MyNumber = '';
  String MyName = '';

  bool value1 = false;
  bool value2 = false;
  bool value3 = false;

  bool value4 = false;
  bool value5 = false;
  bool value6 = false;

  void onChangedValue1(bool value) {
    setState(() {
      value1 = value;
    });
  }

  void onChangedValue2(bool value) {
    setState(() {
      value2 = value;
    });
  }

  void onChangedValue3(bool value) {
    setState(() {
      value3 = value;
    });
  }

  void onChangedValue4(bool value) {
    setState(() {
      value4 = value;
    });
  }

  void onChangedValue5(bool value) {
    setState(() {
      value5 = value;
    });
  }

  void onChangedValue6(bool value) {
    setState(() {
      value6 = value;
    });
  }

  void OnClickBtn() {
    setState(() {
      name = ' Mohamed Hassan';
    });
  }

  void OnFlatBtn() {
    setState(() {
      name = 'FlatButton';
    });
  }

  void OnHome() {
    setState(() {
      MyNumber = 'OnHome';
    });
  }

  void OnAirPlan() {
    setState(() {
      MyNumber = 'OnAirPlan';
    });
  }

  void OnChangeValue(String text) {
    setState(() {
      MyName = 'OnChange :  $text';
    });

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.indigoAccent,
        title: new Text('App Click'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(22.0),
        child: new Column(
          children: <Widget>[
//            new Text('Hello $name'),
//            new RaisedButton(
//                onPressed: OnClickBtn,
//                child: new Text('Hello Mohamed')),
//         //   new FlatButton(onPressed: OnFlatBtn, child: new Text('Click me ')),
//            new Text('Hello $MyNumber'),
//            new IconButton(icon: new Icon(Icons.home), onPressed: OnHome),
//            new IconButton(icon: new Icon(Icons.airplanemode_active), onPressed: OnAirPlan),
//            new Text('$MyName'),
//            new TextField(
//              autocorrect: true,
//              autofocus: true,
//              decoration: new InputDecoration(
//                icon: new Icon(Icons.account_circle),
//                labelText: 'your name',
//                hintText: 'name',
//              ),
//              keyboardType: TextInputType.text,
//              onChanged: OnChangeValue,
//            ),
            new Checkbox(
                value: value1,
                onChanged: onChangedValue1,
                activeColor: Colors.orange),
            new Checkbox(
                value: value2,
                onChanged: onChangedValue2,
                activeColor: Colors.limeAccent),
            new CheckboxListTile(
              value: value3,
              onChanged: onChangedValue3,
              title: new Text('hello mohamed its CheckboxListTile'),
              subtitle: new Text('its CheckboxListTile'),
              activeColor: Colors.red,
              secondary: new Icon(Icons.check_box),
            ),
            new Switch(
                value: value4,
                onChanged: onChangedValue4,
                activeColor: Colors.blue),
            new Switch(
                value: value5,
                onChanged: onChangedValue5,
                activeColor: Colors.indigo),
            new SwitchListTile(
              value: value6,
              onChanged: onChangedValue6,
              title: new Text('hello mohamed its SwitchListTile'),
              subtitle: new Text('its SwitchListTile'),
              activeColor: Colors.red,
              secondary: new Icon(Icons.switch_camera),
            ),
            new RaisedButton.icon(
                onPressed: _neverSatisfied,
                icon: new Icon(Icons.notifications_active),
                label: new Text('Get Notification')),
            new RaisedButton.icon(
                onPressed: ShowBottomSheet,
                icon: new Icon(Icons.notifications),
                label: new Text('Get Bottom Sheet ')),
          ],
        ),
      ),
      drawer: new Drawer(
        child: new Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(22.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                'Welcome Mohamed Hassan',
                textDirection: TextDirection.ltr,
                style: new TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              new Text(
                'Home Main',
                textDirection: TextDirection.ltr,
                style: new TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              new Checkbox(value: value3, onChanged: onChangedValue3),
              new Checkbox(value: value4, onChanged: onChangedValue4),
              new Checkbox(value: value5, onChanged: onChangedValue5),
              new CheckboxListTile(
                value: value6,
                onChanged: onChangedValue6,
                activeColor: Colors.orange,
                title: new Text('Do you want Notification'),
                secondary: new Icon(Icons.notifications_active),
                selected: false,
                checkColor: Colors.yellow,
              ),
              new CheckboxListTile(
                value: value1,
                onChanged: onChangedValue1,
                activeColor: Colors.blue,
                title: new Text('Do you want Notification for update app'),
                secondary: new Icon(Icons.notifications_active),
                selected: false,
                checkColor: Colors.red,
              ),
              new CheckboxListTile(
                value: value2,
                onChanged: onChangedValue2,
                activeColor: Colors.cyan,
                title: new Text('Do you want Access Gps in app'),
                secondary: new Icon(Icons.notifications_active),
                selected: false,
                checkColor: Colors.indigo,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScaffoActionBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OnClickAlarm() {
      print('Alarming !!!');
    }

    OnClickPrint() {
      print('Printing !!!');
    }

    OnClickMap() {
      print('Maping !!!');
    }

    OnClickFloatBottom() {
      print('hello mohamed !!!');
    }

    return new Scaffold(
      backgroundColor: Colors.white70,
      appBar: new AppBar(
        title: new Text('Mohamed Bar'),
        backgroundColor: Colors.indigo,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.access_alarm),
              onPressed: () => debugPrint('access_alarm')),
          new IconButton(
              icon: new Icon(Icons.print),
              onPressed: () => debugPrint('print')),
          new IconButton(
              icon: new Icon(Icons.map), onPressed: () => debugPrint('map'))
        ],
      ),
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new IconButton(
                icon: new Icon(Icons.watch),
                onPressed: () => debugPrint('watch')),
            new IconButton(
                icon: new Icon(Icons.account_balance),
                onPressed: () => debugPrint('account_balance')),
            new IconButton(
                icon: new Icon(Icons.account_box),
                onPressed: () => debugPrint('account_box ')),
            new Text(
              'Mohamed Haasn',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            new IconButton(
                icon: new Icon(Icons.add_a_photo),
                onPressed: () => debugPrint('add_a_photo')),
            new InkWell(
              child: new Text(
                'InWell',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              onDoubleTap: () => debugPrint('double tap'),
              onTap: () => debugPrint('single tap'),
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: OnClickFloatBottom,
        tooltip: 'hi',
        backgroundColor: Colors.deepOrange,
        child: new Icon(Icons.map),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.account_box), title: new Text('Profile')),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.add_a_photo), title: new Text('Camera')),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.map), title: new Text('Map')),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.print), title: new Text('print')),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (int value) => debugPrint(' item  $value'),
      ),
    );
  }
}


