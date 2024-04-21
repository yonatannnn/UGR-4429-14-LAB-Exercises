import 'package:equatable/equatable.dart';

class DataState extends Equatable {
  final List<dynamic> data;

  DataState(this.data);

  @override
  List<Object?> get props => [data];
}
