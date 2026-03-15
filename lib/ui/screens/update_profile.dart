import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskmanager/ui/utils/screen_background.dart';
import 'package:taskmanager/ui/widgets/photo_picker.dart';
import 'package:taskmanager/ui/widgets/tmappbar.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UpdateProfileState createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  final ImagePicker _imagePicker = ImagePicker();
  
  XFile? _selectedImage;

  Future<void> pickImage() async {
    final XFile? image = await _imagePicker.pickImage(
      source: ImageSource.gallery,
    );
    if (image != null) {
      _selectedImage = image;
      setState(() {
        
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Text(
                  "Update Profile",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 15),

                //image picker
                Photo_picker(onTap: pickImage, selectedPhoto: _selectedImage,),

                SizedBox(height: 10),
                TextFormField(decoration: InputDecoration(hintText: "Email")),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(hintText: "First Name"),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(hintText: "Last Name"),
                ),
                SizedBox(height: 10),
                TextFormField(decoration: InputDecoration(hintText: "Mobile")),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(hintText: "Password"),
                ),
                SizedBox(height: 10),
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
