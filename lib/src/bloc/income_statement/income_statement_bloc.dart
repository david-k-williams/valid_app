import 'package:flutter_bloc/flutter_bloc.dart';
import 'income_statement_event.dart';
import 'income_statement_state.dart';
import 'package:valid/src/repositories/income_statement_repo.dart';

class IncomeStatementBloc
    extends Bloc<IncomeStatementEvent, IncomeStatementState> {
  final MockIncomeStatementRepository incomeStatementRepository;

  IncomeStatementBloc({required this.incomeStatementRepository})
      : super(IncomeStatementsLoading()) {
    on<LoadIncomeStatements>(_onLoadIncomeStatements);
    on<AddIncomeStatement>(_onAddIncomeStatement);
    on<UpdateIncomeStatement>(_onUpdateIncomeStatement);
    on<DeleteIncomeStatement>(_onDeleteIncomeStatement);
  }

  void _onLoadIncomeStatements(
      LoadIncomeStatements event, Emitter<IncomeStatementState> emit) {
    try {
      final incomeStatements =
          incomeStatementRepository.getAllIncomeStatements();
      emit(IncomeStatementsLoaded(incomeStatements));
    } catch (e) {
      emit(IncomeStatementOperationFailure(e.toString()));
    }
  }

  void _onAddIncomeStatement(
      AddIncomeStatement event, Emitter<IncomeStatementState> emit) {
    try {
      incomeStatementRepository.addIncomeStatement(event.incomeStatement);
      final incomeStatements =
          incomeStatementRepository.getAllIncomeStatements();
      emit(IncomeStatementsLoaded(incomeStatements));
    } catch (e) {
      emit(IncomeStatementOperationFailure(e.toString()));
    }
  }

  void _onUpdateIncomeStatement(
      UpdateIncomeStatement event, Emitter<IncomeStatementState> emit) {
    try {
      incomeStatementRepository.updateIncomeStatement(event.incomeStatement);
      final incomeStatements =
          incomeStatementRepository.getAllIncomeStatements();
      emit(IncomeStatementsLoaded(incomeStatements));
    } catch (e) {
      emit(IncomeStatementOperationFailure(e.toString()));
    }
  }

  void _onDeleteIncomeStatement(
      DeleteIncomeStatement event, Emitter<IncomeStatementState> emit) {
    try {
      incomeStatementRepository.removeIncomeStatement(event.id);
      final incomeStatements =
          incomeStatementRepository.getAllIncomeStatements();
      emit(IncomeStatementsLoaded(incomeStatements));
    } catch (e) {
      emit(IncomeStatementOperationFailure(e.toString()));
    }
  }
}
