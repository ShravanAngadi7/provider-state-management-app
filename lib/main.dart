import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/list_provider.dart';

import 'home.dart';

void main() {
  runApp(const NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => numberListProvider(),
        ),
      ],
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
