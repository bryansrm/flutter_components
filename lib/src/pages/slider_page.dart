import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valueSlider = 100.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _crearSlider(),
            Expanded(
              child: _crearImagen(),
            )
            
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {

    return Slider(
      value: _valueSlider,
      min: 10.0,
      max: 400.0,
      onChanged: ( value ){
        
        setState(() {
          _valueSlider = value;
        });

        print(value);
      },
    );

  }

  Widget _crearImagen() {

    return Image(
      image: NetworkImage('https://www.academind.com/static/82471063091d8dd5c25baba64914d893/f0628/flutter.png'),
      width: _valueSlider,
      fit: BoxFit.contain,
    );

  }
}