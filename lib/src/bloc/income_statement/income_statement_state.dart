import 'package:equatable/equatable.dart';
import '../../models/models.dart';

abstract class IncomeStatementState extends Equatable {
  const IncomeStatementState();

  @override
  List<Object> get props => [];
}

class IncomeStatementsLoading extends IncomeStatementState {}

class IncomeStatementsLoaded extends IncomeStatementState {
  final List<IncomeStatement> incomeStatements;

  const IncomeStatementsLoaded(this.incomeStatements);

  @override
  List<Object> get props => [incomeStatements];
}

class IncomeStatementOperationFailure extends IncomeStatementState {
  final String error;

  const IncomeStatementOperationFailure(this.error);

  @override
  List<Object> get props => [error];
}
