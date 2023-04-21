import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'list_provider.dart';

class Second extends StatefulWidget {
  const Second({
    super.key,
  });

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<numberListProvider>(
      builder: (context, numberListProviderModel, child) => Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numberListProviderModel.add();
          },
          child: const Icon(Icons.add),
        ),
        body: SizedBox(
          child: Column(
            children: [
              Text(
                numberListProviderModel.numbers.last.toString(),
                style: const TextStyle(fontSize: 30),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numberListProviderModel.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      numberListProviderModel.numbers[index].toString(),
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
