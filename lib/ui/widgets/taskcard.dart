import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        child: ListTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          title: Text("Lorem Ipsum is simply dummy"),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Its a long established fact that a reader will be distracted",
              ),
              SizedBox(height: 10),
              Text("Date: 12-06-2024"),
              SizedBox(height: 10),
              Row(
                children: [
                  Chip(
                    label: Text("New"),
                    backgroundColor: Colors.blue,
                    labelStyle: TextStyle(color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  ),

                  Spacer(),

                  IconButton(
                    onPressed: () {},
                    style: IconButton.styleFrom(foregroundColor: Colors.green),
                    icon: Icon(Icons.edit_note_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    style: IconButton.styleFrom(foregroundColor: Colors.red),
                    icon: Icon(Icons.delete_forever),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
