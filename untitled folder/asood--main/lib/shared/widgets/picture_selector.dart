import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PictureSelector extends StatefulWidget {
  const PictureSelector({super.key});

  @override
  State<PictureSelector> createState() => _PictureSelectorState();
}

class _PictureSelectorState extends State<PictureSelector> {
  File? _profileImage;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }

  void _removeImage() {
    setState(() {
      _profileImage = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const Text('انتخاب عکس پروفایل: '),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: _profileImage != null
                    ? FileImage(_profileImage!) as ImageProvider
                    : const AssetImage('assets/images/placeholder.jpg')
                        as ImageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.add_a_photo),
                label: const Text('افزودن'),
                onPressed: _pickImage,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.delete_outline),
                label: const Text('حذف'),
                onPressed: _profileImage != null ? _removeImage : null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
