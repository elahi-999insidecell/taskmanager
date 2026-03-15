import 'package:flutter/material.dart';
import 'package:taskmanager/ui/utils/screen_background.dart';
import 'package:taskmanager/ui/widgets/tmappbar.dart';

class AddNewTask extends StatefulWidget {
  const AddNewTask({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AddNewTaskState createState() => _AddNewTaskState();
}

class _AddNewTaskState extends State<AddNewTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80),
                Text(
                  "Add New Task",
                  style: Theme.of(context).textTheme.titleLarge,
                ),

                SizedBox(height: 24),
                TextFormField(decoration: InputDecoration(hintText: "Subject")),
                SizedBox(height: 16),
                TextFormField(
                  minLines: 10,
                  maxLines: 30,
                  decoration: InputDecoration(hintText: "Description"),
                ),
                SizedBox(height: 20),
                FilledButton(
                  onPressed: () {},
                  child: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
