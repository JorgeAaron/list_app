import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:untitled/main.dart';

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 3000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de bienvenida'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                child: FadeTransition(
                  opacity: animation,
                  child: Text("Bienvenido compañero..."),
              )
            ),
            MaterialButton(
                color: Colors.lightGreen,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                })
          ],
        ),
      ),
    );
  }
}
