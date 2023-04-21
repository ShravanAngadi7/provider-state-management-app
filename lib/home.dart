import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/list_provider.dart';
import 'package:provider_app/second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              Container(
                height: 560,
                width: double.maxFinite,
                child: ListView.builder(
                  itemCount: numberListProviderModel.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      numberListProviderModel.numbers[index].toString(),
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Second()));
                },
                child: Text('second'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
