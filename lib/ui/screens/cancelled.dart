import 'package:flutter/material.dart';
import 'package:taskmanager/ui/widgets/taskcard.dart';
import 'package:taskmanager/ui/widgets/tmappbar.dart';

class CancelledScreen extends StatefulWidget {
  const CancelledScreen({super.key});

  @override
  State<CancelledScreen> createState() => _CancelledScreenState();
}

class _CancelledScreenState extends State<CancelledScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return TaskCard(status: 'Cancelled', cardColor: Colors.red,);
          },
          separatorBuilder: (context, index){
            return SizedBox(height: 2);
          },
          itemCount: 10,
        ),
      ),
      );
  }
}
