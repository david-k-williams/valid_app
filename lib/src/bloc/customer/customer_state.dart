import 'package:equatable/equatable.dart';
import '../../models/models.dart';

abstract class CustomerState extends Equatable {
  const CustomerState();

  @override
  List<Object?> get props => [];
}

class CustomersLoading extends CustomerState {}

class CustomersLoaded extends CustomerState {
  final List<Customer> customers;

  const CustomersLoaded(this.customers);

  @override
  List<Object?> get props => [customers];
}

class CustomerOperationFailure extends CustomerState {
  final String error;

  const CustomerOperationFailure(this.error);

  @override
  List<Object?> get props => [error];
}
