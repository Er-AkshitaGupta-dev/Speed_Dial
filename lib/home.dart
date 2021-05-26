import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        title: Center(child: Text('Speed Dial FAB')),
        backgroundColor: Colors.indigo,
      ),
      floatingActionButton: SpeedDial(
        closeManually: true,
        onOpen: () => print('Opening'),
        onClose: () => print('Closing'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.indigo,
        overlayColor: Colors.pink,
        overlayOpacity: 1,
        curve: Curves.slowMiddle,
        animatedIcon: AnimatedIcons.list_view,
        children: [
          SpeedDialChild(
              child: Icon(
                Icons.ac_unit,
                color: Colors.white,
              ),
              backgroundColor: Colors.deepOrange,
              label: 'First Item',
              onTap: () => print('First!'),
              onLongPress: () => print('FIRST CHILD LONG PRESS')),
          SpeedDialChild(
              child: Icon(Icons.accessibility_sharp, color: Colors.white),
              backgroundColor: Colors.amber,
              label: 'Second Item',
              onTap: () => print('Second!'),
              onLongPress: () => print('SECOND CHILD LONG PRESS'))
        ],
      ),
    );
  }
}
