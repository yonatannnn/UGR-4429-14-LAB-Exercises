import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final fetchedDataProvider = StateProvider<List<dynamic>>((ref) => []);

class ApiService {
  Future<List<dynamic>> fetchData(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}

final apiServiceProvider = Provider((ref) => ApiService());

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(fetchedDataProvider);
    final apiService = ref.watch(apiServiceProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Fetched Data'),
      ),
      body: Center(
        child: data.isEmpty
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final item = data[index];
                  return Column(
                    children: [
                      ListTile(
                        title: Text(item['title']),
                        subtitle: Text(item['body']),
                      ),
                      Divider(),
                    ],
                  );
                },
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final fetchedData = await apiService
              .fetchData('https://jsonplaceholder.typicode.com/posts');
          ref.read(fetchedDataProvider.notifier).state = fetchedData;
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}

void main() {
  runApp(ProviderScope(
    child: MaterialApp(
      home: MyHomePage(),
    ),
  ));
}
