import 'package:flutter/material.dart';
import 'package:taskmanager/ui/screens/cancelled.dart';
import 'package:taskmanager/ui/screens/completed.dart';
import 'package:taskmanager/ui/screens/newtask.dart';
import 'package:taskmanager/ui/screens/progress.dart';

class Mainnavholder extends StatefulWidget {
  const Mainnavholder({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainnavholderState createState() => _MainnavholderState();
}

class _MainnavholderState extends State<Mainnavholder> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
  NewTask(), 
  Progress(), 
  CancelledScreen(), 
  CompletedScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex:
            _selectedIndex, // kon index e click kora hoise seta dekhabe
        onDestinationSelected: (int index) {
          _selectedIndex = index;
          setState(() {});
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.add), label: 'New Task'),
          NavigationDestination(icon: Icon(Icons.refresh), label: 'Progress'),
          NavigationDestination(icon: Icon(Icons.close), label: 'Cancelled'),

          NavigationDestination(icon: Icon(Icons.check), label: 'Completed'),
        ],
      ),
    );
  }
}
