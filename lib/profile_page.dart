import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String fullName;
  final String id;
  final String department;
  final String batch;
  final String passingYear;
  final String experience;
  final String email;

  const ProfileScreen ({
    Key? key,
    required this.fullName,
    required this.id,
    required this.department,
    required this.batch,
    required this.passingYear,
    required this.experience,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Color(0xffB81736),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProfileField('Full Name', fullName),
            _buildProfileField('Id', id),
            _buildProfileField('Department', department),
            _buildProfileField('Batch', batch),
            _buildProfileField('Passing Year', passingYear),
            _buildProfileField('Experience', experience),
            _buildProfileField('Email', email),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement your edit name functionality here
        },
        backgroundColor: Color(0xffB81736),
        child: const Icon(Icons.edit),
      ),
    );
  }

  Widget _buildProfileField(String label, String value) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffB81736),
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 4),
              Text(
                value,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
            ),
        );
    }
}