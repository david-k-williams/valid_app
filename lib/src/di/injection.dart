import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:valid/src/repositories/customer_repo.dart';
import 'package:valid/src/repositories/income_statement_repo.dart';
import '../repositories/autehntication_repo.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

final GetIt getIt = GetIt.instance;
void setup() async {
  final incomeStatementRepository = MockIncomeStatementRepository();
  getIt.registerLazySingleton<MockIncomeStatementRepository>(
      () => incomeStatementRepository);
  getIt.registerLazySingleton<CustomerRepository>(() => CustomerRepository());
  getIt.registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepository());
}
