import 'package:beautyshining/pages/auth_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,

            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text('Andresss'),
          const SizedBox(
            height: 80,
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => LoginPage())
              );
            }, 
            child: const Text("Logout")
          ),
        ],
      ),
    );
  }
}