import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data_provider.dart'; // import your data provider

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data from Network'),
      ),
      body: Consumer<DataProvider>(
        builder: (context, dataProvider, _) {
          return FutureBuilder<List<dynamic>>(
            future: dataProvider.fetchData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                final data = snapshot.data;
                if (data != null && data.isNotEmpty) {
                  return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Column(
                          children: [
                            Text(data[index]['userId'].toString()),
                            Text(data[index]['id'].toString()),
                            Text(
                              data[index]['title'],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(data[index]['body']),
                          ],
                        ),
                      );
                    },
                  );
                } else {
                  return Center(child: Text('No data available'));
                }
              }
            },
          );
        },
      ),
    );
  }
}
