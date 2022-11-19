import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'package:history/history_provider.dart';
//import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => HistoryProvider(),
          ),
        ],
        child: MaterialApp(
          home: const HistoryPage(),
          theme: ThemeData.light(),
          debugShowCheckedModeBanner: false,
        ));
  }
}

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final _dropDownList = [
    Column(
      children: [
        const SizedBox(
          width: 380,
          height: 102,
          child: TextField(
            readOnly: true,
            maxLines: null,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(8, 12, 8, 12)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Check',
            style: TextStyle(color: Colors.green),
          ),
        ),
      ],
    ),
    Column(
      children: [
        const SizedBox(
          width: 380,
          height: 102,
          child: TextField(
            readOnly: true,
            maxLines: null,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(8, 12, 8, 12)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Check',
            style: TextStyle(color: Colors.green),
          ),
        ),
      ],
    ),
    Column(
      children: [
        const SizedBox(
          width: 380,
          height: 102,
          child: TextField(
            readOnly: true,
            maxLines: null,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(8, 12, 8, 12)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Check',
            style: TextStyle(color: Colors.green),
          ),
        ),
      ],
    ),
    Column(
      children: [
        const SizedBox(
          width: 380,
          height: 102,
          child: TextField(
            readOnly: true,
            maxLines: null,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(8, 12, 8, 12)),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Check',
            style: TextStyle(color: Colors.green),
          ),
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Clear history',
              style: TextStyle(color: Colors.orange),
            ),
          ),
          ExpansionTile(
            title: const Text('Today - '),
            children: _dropDownList.toList(),
          ),
          ExpansionTile(
            title: const Text('Yesterday'),
            children: _dropDownList.toList(),
          ),
          ExpansionTile(
            title: const Text('Last Week'),
            children: _dropDownList.toList(),
          ),
          ExpansionTile(
            title: const Text('Other'),
            children: _dropDownList.toList(),
          ),
        ],
      ),
    );
  }
}
