import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// ignore: camel_case_types
class Photo_picker extends StatelessWidget {
  const Photo_picker({super.key, required this.onTap, this.selectedPhoto});

  final VoidCallback onTap;
  final XFile? selectedPhoto; // image k dhore rakhe

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Text(
              selectedPhoto == null ? "No photo is selected" : selectedPhoto!.name,
              style: TextStyle(
                overflow: TextOverflow.ellipsis
              ),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
