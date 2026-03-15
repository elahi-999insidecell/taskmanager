import 'package:flutter/material.dart';
import 'package:taskmanager/ui/widgets/taskcard.dart';
import 'package:taskmanager/ui/widgets/tmappbar.dart';

class CompletedScreen extends StatefulWidget {
  const CompletedScreen({super.key});

  @override
  State<CompletedScreen> createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return TaskCard(status: 'Completed', cardColor: Colors.green,);
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
