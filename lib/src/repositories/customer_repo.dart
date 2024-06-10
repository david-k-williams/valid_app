import 'package:uuid/uuid.dart';
import '../models/models.dart';

class CustomerRepository {
  final List<Customer> _customers = [
    Customer(
      id: 1,
      firstName: 'David',
      lastName: 'Williams',
      email: 'david.williams@example.com',
      phoneNumber: '123-456-7890',
      dateOfBirth: DateTime(1992, 10, 11),
      address: '3719 Military Rd',
      city: 'Arlington',
      state: 'VA',
      postalCode: '22207',
      country: 'USA',
    ),
  ];

  List<Customer> getAllCustomers() {
    return _customers;
  }

  Customer? getCustomerById(int id) {
    return _customers.firstWhere((customer) => customer.id == id);
  }

  Customer? getCustomerByCustomerID(String customerID) {
    return _customers.firstWhere(
      (customer) => customer.customerID == customerID,
    );
  }

  int addCustomer(Customer customer) {
    customer.id = _customers.isNotEmpty ? _customers.last.id + 1 : 1;
    _customers.add(customer);
    return customer.id;
  }

  void removeCustomer(int id) {
    _customers.removeWhere((customer) => customer.id == id);
  }

  void updateCustomer(Customer customer) {
    final index = _customers.indexWhere((c) => c.id == customer.id);
    if (index != -1) {
      _customers[index] = customer;
    }
  }
}
