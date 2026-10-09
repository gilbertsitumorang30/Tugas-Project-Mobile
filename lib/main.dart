import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.red,
      ).copyWith(),

      themeMode: ThemeMode.dark,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text("Pertemuan 4"),
        backgroundColor: colors.primary,
        foregroundColor: colors.onPrimary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24),
          FilledButton(onPressed: () {}, child: Text("Submit")),
          SizedBox(height: 24),
          Container(
            height: 200,
            width: 200,
            color: colors.primaryContainer,
            child: Text(
              "AISD - A Pagi",
              style: text.titleLarge?.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
