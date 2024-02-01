import 'package:app_login_flutter/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> _logout() async {
    final response = await http.post(
      Uri.parse('$BASE_URL/api/auth/signout'),
    );

    if (response.statusCode == 200) {
      print('Logout efetuado com sucesso!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout_rounded),
            tooltip: 'Logout',
            onPressed: () {
              _logout();
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Login efetuado com sucesso!'),
      ),
    );
  }
}
