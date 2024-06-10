import 'package:flutter_bloc/flutter_bloc.dart';
import 'customer_event.dart';
import 'customer_state.dart';
import '../../repositories/customer_repo.dart';

class CustomerBloc extends Bloc<CustomerEvent, CustomerState> {
  final CustomerRepository customerRepository;

  CustomerBloc({required this.customerRepository}) : super(CustomersLoading()) {
    on<LoadCustomers>(_onLoadCustomers);
    on<AddCustomer>(_onAddCustomer);
    on<UpdateCustomer>(_onUpdateCustomer);
    on<DeleteCustomer>(_onDeleteCustomer);
  }

  void _onLoadCustomers(LoadCustomers event, Emitter<CustomerState> emit) {
    try {
      final customers = customerRepository.getAllCustomers();
      emit(CustomersLoaded(customers));
    } catch (e) {
      emit(CustomerOperationFailure(e.toString()));
    }
  }

  void _onAddCustomer(AddCustomer event, Emitter<CustomerState> emit) {
    try {
      customerRepository.addCustomer(event.customer);
      final customers = customerRepository.getAllCustomers();
      emit(CustomersLoaded(customers));
    } catch (e) {
      emit(CustomerOperationFailure(e.toString()));
    }
  }

  void _onUpdateCustomer(UpdateCustomer event, Emitter<CustomerState> emit) {
    try {
      customerRepository.updateCustomer(event.customer);
      final customers = customerRepository.getAllCustomers();
      emit(CustomersLoaded(customers));
    } catch (e) {
      emit(CustomerOperationFailure(e.toString()));
    }
  }

  void _onDeleteCustomer(DeleteCustomer event, Emitter<CustomerState> emit) {
    try {
      customerRepository.removeCustomer(event.id);
      final customers = customerRepository.getAllCustomers();
      emit(CustomersLoaded(customers));
    } catch (e) {
      emit(CustomerOperationFailure(e.toString()));
    }
  }
}
