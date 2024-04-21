import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'data_event.dart';
import 'data_state.dart';
import 'data_provider.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  final DataProvider dataProvider;

  DataBloc(this.dataProvider) : super(DataState([])) {
    on<FetchData>((event, emit) {
      _mapFetchDataToState(event, emit);
    });
  }

  Future<void> _mapFetchDataToState(
      FetchData event, Emitter<DataState> emit) async {
    try {
      final data = await dataProvider.fetchData();
      emit(DataState(data));
    } catch (_) {
      print('error is here');
      emit(DataState([]));
    }
  }
}
