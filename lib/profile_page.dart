import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/form.dart';

class MyProfileForm extends StatefulWidget {
  @override
  _MyProfileFormState createState() => _MyProfileFormState();
}

class _MyProfileFormState extends State<MyProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _id = '';
  String _department = '';
  String _batch = '';
  String _passingYear = '';
  String _about = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/profile_photo.jpg'),
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'ID'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your ID';
                  }
                  return null;
                },
                onSaved: (value) {
                  _id = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Department'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your department';
                  }
                  return null;
                },
                onSaved: (value) {
                  _department = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Batch'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your batch';
                  }
                  return null;
                },
                onSaved: (value) {
                  _batch = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Passing Year'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your passing year';
                  }
                  return null;
                },
                onSaved: (value) {
                  _passingYear = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'About'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please provide some information about yourself';
                  }
                  return null;
                },
                onSaved: (value) {
                  _about = value!;
                },
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        // Save form data
                      }
                    },
                    child: Text('Save'),
                  ),
                  SizedBox(width: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      // Add visit alumni functionality
                    },
                    child: Text('Visit Alumni'),
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

void main() {
  runApp(MaterialApp(
    title: 'My Profile',
    home: MyProfileForm(),
  ));
}
