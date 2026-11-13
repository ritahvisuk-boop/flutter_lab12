
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'container_provider.dart';
import 'sliders_section.dart';
import 'red_container.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ContainerProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Lab 12',
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor:
        const Color(0xFFFFF7FF),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFD1B7F5),
          foregroundColor: Colors.black,
          centerTitle: true,
          elevation: 0,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        body: const Column(
          children: [
            SlidersSection(),
            SizedBox(height: 10),
            Center(
              child: RedContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
