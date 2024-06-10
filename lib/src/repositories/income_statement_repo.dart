import '../models/models.dart';

class MockIncomeStatementRepository {
  final List<IncomeStatement> _incomeStatements = [
    IncomeStatement(
      id: 1,
      platformName: 'Uber',
      amount: 250.0,
      statementDate: DateTime(2024, 6, 1),
    ),
    IncomeStatement(
      id: 2,
      platformName: 'Uber Eats',
      amount: 120.0,
      statementDate: DateTime(2024, 6, 1),
    ),
    IncomeStatement(
      id: 3,
      platformName: 'Fiverr',
      amount: 40.0,
      statementDate: DateTime(2024, 6, 1),
    ),
    IncomeStatement(
      id: 4,
      platformName: 'Uber',
      amount: 99.0,
      statementDate: DateTime(2024, 6, 1),
    ),
    IncomeStatement(
      id: 5,
      platformName: 'Uber Eats',
      amount: 77.0,
      statementDate: DateTime(2024, 6, 1),
    ),
    IncomeStatement(
      id: 6,
      platformName: 'Fiverr',
      amount: 40.0,
      statementDate: DateTime(2024, 6, 1),
    ),
  ];

  List<IncomeStatement> getAllIncomeStatements() {
    return _incomeStatements;
  }

  IncomeStatement? getIncomeStatementById(int id) {
    return _incomeStatements
        .firstWhere((incomeStatement) => incomeStatement.id == id);
  }

  int addIncomeStatement(IncomeStatement incomeStatement) {
    incomeStatement.id =
        _incomeStatements.isNotEmpty ? _incomeStatements.last.id + 1 : 1;
    _incomeStatements.add(incomeStatement);
    return incomeStatement.id;
  }

  void removeIncomeStatement(int id) {
    _incomeStatements
        .removeWhere((incomeStatement) => incomeStatement.id == id);
  }

  void updateIncomeStatement(IncomeStatement incomeStatement) {
    final index =
        _incomeStatements.indexWhere((i) => i.id == incomeStatement.id);
    if (index != -1) {
      _incomeStatements[index] = incomeStatement;
    }
  }
}
