import 'package:equatable/equatable.dart';
import '../../models/models.dart';

abstract class IncomeStatementEvent extends Equatable {
  const IncomeStatementEvent();

  @override
  List<Object> get props => [];
}

class LoadIncomeStatements extends IncomeStatementEvent {}

class AddIncomeStatement extends IncomeStatementEvent {
  final IncomeStatement incomeStatement;

  const AddIncomeStatement(this.incomeStatement);

  @override
  List<Object> get props => [incomeStatement];
}

class UpdateIncomeStatement extends IncomeStatementEvent {
  final IncomeStatement incomeStatement;

  const UpdateIncomeStatement(this.incomeStatement);

  @override
  List<Object> get props => [incomeStatement];
}

class DeleteIncomeStatement extends IncomeStatementEvent {
  final int id;

  const DeleteIncomeStatement(this.id);

  @override
  List<Object> get props => [id];
}
