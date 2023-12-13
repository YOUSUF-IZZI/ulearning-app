import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: (){
            context.push('/HomePage/PageA');
          },
          child: const Text('go page a'),
        )
      ),
    );
  }
}
