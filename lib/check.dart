import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_app/custom.dart';

class check extends StatelessWidget {
  const check({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: const Text("check out"),
        ),
      body: Consumer<Custom>(builder: ((context, Custom, child) {
        return ListView.builder(
          itemCount: Custom.baskitem.length,
          itemBuilder: (context, i) {
        return Card(
          child: ListTile(
            title: Text(Custom.baskitem[i].title),
            trailing: IconButton(
                          onPressed: () {
                            Custom.remove(Custom.baskitem[i]);
                          },
                          icon: const Icon(Icons.remove_circle),
                        )
          ),
        );
      },
      );}))
    );
  }
}