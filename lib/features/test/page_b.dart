import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page b'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const TextField(),
          MaterialButton(
            onPressed: (){
              GoRouter.of(context).pop();
              //context.push('/HomePage/PageA');
            },
            child: const Text('back to page a'),
          )
        ],
      ),
    );
  }
}
