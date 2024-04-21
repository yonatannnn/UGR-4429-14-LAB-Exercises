import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'data_bloc.dart';
import 'data_event.dart';
import 'data_state.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataBloc = BlocProvider.of<DataBloc>(context);
    dataBloc.add(FetchData());

    return Scaffold(
      appBar: AppBar(
        title: Text('Data from Network'),
      ),
      body: BlocBuilder<DataBloc, DataState>(
        builder: (context, state) {
          if (state is DataState) {
            print(state.data);
            if (state.data.isNotEmpty) {
              return ListView.builder(
                itemCount: state.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(state.data[index]['title']),
                    subtitle: Text(state.data[index]['body']),
                  );
                },
              );
            } else {
              return Center(child: Text('No data available'));
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
