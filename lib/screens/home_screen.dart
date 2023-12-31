import 'package:flutter/material.dart';
import 'package:loginflutter/provider/auth_provider.dart';
import 'package:provider/provider.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Homepage"),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.exit_to_app)),
        ],
      ),

      body: Center(
        child: Text("Home page"),
      ),
    );
  }
}
