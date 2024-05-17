import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  final _nameController = TextEditingController();
  final _idController = TextEditingController();
  final _departmentController = TextEditingController();
  final _batchController = TextEditingController();
  final _passingYearController = TextEditingController();
  final _experiencesController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: _image == null
                    ? Text('No image selected.')
                    : Image.file(_image),
              ),
              ElevatedButton(
                onPressed: getImage,
                child: Text('Upload Photo'),
              ),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: _idController,
                decoration: InputDecoration(labelText: 'Id'),
              ),
              TextField(
                controller: _departmentController,
                decoration: InputDecoration(labelText: 'Department'),
              ),
              TextField(
                controller: _batchController,
                decoration: InputDecoration(labelText: 'Batch'),
              ),
              TextField(
                controller: _passingYearController,
                decoration: InputDecoration(labelText: 'Passing Year'),
              ),
              TextField(
                controller: _experiencesController,
                decoration: InputDecoration(labelText: 'Experiences'),
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle register button press
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}