import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page a'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const TextField(),
          MaterialButton(
            onPressed: (){
              GoRouter.of(context).go('/HomePage/PageA/PageB');
              //context.push('/HomePage/PageA');
            },
            child: const Text('go page b'),
          )
        ],
      ),
    );
  }
}
