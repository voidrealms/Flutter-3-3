import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  int _value1 = 0;
  int _value2 = 0;

  /*
  void _setValue1(int value) => setState(() => _value1 = value);
  void _setValue2(int value) => setState(() => _value2 = value);

  Widget makeRadios() {
    List<Widget> list = new List<Widget>();

    for(int i = 0; i < 3; i++){
      list.add(new Radio(value: i, groupValue: _value1, onChanged: _setValue1));
    }

    Column column = new Column(children: list,);
    return column;
  }
  */
  
  
void _setValue1(int? value) => setState(()=> _value1 = value!);
void _setValue2(int? value) => setState(()=> _value2 = value!);
 
Widget makeRadios () {
 
  List<Widget> list = <Widget> [];
  for (int i=0; i < 3; i ++){
    list.add(new Radio(value: i, groupValue: _value1, onChanged: _setValue1));
  }
  Column column= Column (children: list ,);
  return column;
}

  Widget makeRadioTiles() {
    List<Widget> list = new List<Widget>();

    for(int i = 0; i < 3; i++){
      list.add(new RadioListTile(
        value: i,
        groupValue: _value2,
        onChanged: _setValue2,
        activeColor: Colors.green,
        controlAffinity: ListTileControlAffinity.trailing,
        title: new Text('Item: ${i}'),
        subtitle: new Text('sub title'),

      ));
    }

    Column column = new Column(children: list,);
    return column;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                makeRadios(),
                makeRadioTiles(),

              ],
            ),
          )
      ),
    );
  }
}
