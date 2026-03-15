import 'package:flutter/material.dart';
import 'package:taskmanager/ui/screens/update_profile.dart';

class TMAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TMAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      title: InkWell(
        onTap: () {
          Navigator.push(
            (context),
            MaterialPageRoute(builder: (context) => UpdateProfile()),
          );
        },
        child: Row(
          children: [
            CircleAvatar(),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " Charles Leclerc",
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(color: Colors.white),
                ),

                Text(
                  " leoleclerc@gmail.com",
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),

      actions: [
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(foregroundColor: Colors.white),
          icon: Icon(Icons.logout),
        ),
      ],
    );
  }
}
