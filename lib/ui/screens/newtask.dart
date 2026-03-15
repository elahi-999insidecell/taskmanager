import 'package:flutter/material.dart';
import 'package:taskmanager/ui/screens/add_new_task.dart';
import 'package:taskmanager/ui/widgets/taskcard.dart';
import 'package:taskmanager/ui/widgets/taskcountbystatus.dart';
import 'package:taskmanager/ui/widgets/tmappbar.dart';

class NewTask extends StatefulWidget {
  const NewTask({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NewTaskState createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: Column(
        children: [
          SizedBox(height: 15),
          SizedBox(
            height: 90,

            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return TaskCountByStatus(title: "Cancelled", count: index + 5);
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 4);
              },
            ),
          ),
          SizedBox(height: 20),

          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return TaskCard(status: 'New', cardColor: Colors.blue,);
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 4);
              },
              itemCount: 10,
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNewTask()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
