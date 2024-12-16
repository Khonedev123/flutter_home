import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Khone extends StatefulWidget {
  const Khone({super.key});

  @override
  State<Khone> createState() => _KhoneState();
}

class _KhoneState extends State<Khone> {
  final ImagePicker _picker = ImagePicker();
  XFile? _imageFile;

  Future<void> selectImage(ImageSource source) async {
    final XFile? image = await _picker.pickImage(source: source);
    if (image != null) {
      setState(() {
        _imageFile = image;
      });
    }
  }

  void showImageSourceOptions() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('Take a Photo'),
                onTap: () {
                  Navigator.pop(context); // Close the modal
                  selectImage(ImageSource.camera);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Choose from Gallery'),
                onTap: () {
                  Navigator.pop(context); // Close the modal
                  selectImage(ImageSource.gallery);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget showImage() {
    return GestureDetector(
      onTap: showImageSourceOptions,
      child: Stack(
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: _imageFile != null
                ? FileImage(File(_imageFile!.path)) as ImageProvider
                : const AssetImage("assets/images/bg1.jpg"),
          ),
          Positioned(
            bottom: 5,
            right: 5,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(4.0),
              child: const Icon(
                Icons.camera_alt,
                color: Colors.teal,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: showImage(),
      ),
    );
  }
}
