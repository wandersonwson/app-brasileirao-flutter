import 'package:flutter/material.dart';
import '../modelos/time.dart';

class TimeDados extends StatefulWidget {
  Time time;
  TimeDados({super.key, required this.time});

  @override
  State<TimeDados> createState() => _TimeDadosState();
}

class _TimeDadosState extends State<TimeDados> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: widget.time.cor,
          title: Text(
              widget.time.nome,
              style: TextStyle(color: Colors.white)
          ),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(
                Icons.stacked_line_chart,
                color: Colors.white,
              ),
              text: 'Estatísticas',
            ),
            Tab(
              icon: Icon(
                Icons.emoji_events,
                color: Colors.white,
              ),
              text: 'Títulos',
            )],
          ),
        ),
      ),
    );
  }
}
