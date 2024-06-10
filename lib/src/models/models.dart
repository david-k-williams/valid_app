import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'models.g.dart';

@JsonSerializable()
class Customer {
  @JsonKey(ignore: true)
  int id;
  String customerID;

  String firstName;
  String lastName;
  String email;
  String phoneNumber;
  DateTime dateOfBirth;
  String address;
  String city;
  String state;
  String postalCode;
  String country;

  @JsonKey(ignore: true)
  List<LinkedPlatformAccount>? linkedPlatformAccounts;

  @JsonKey(ignore: true)
  List<IncomeStatement>? incomeStatements;

  @JsonKey(ignore: true)
  List<SimulatedPaystub>? simulatedPaystubs;

  @JsonKey(ignore: true)
  List<ProofOfIncomeReport>? proofOfIncomeReports;

  Customer({
    this.id = 0,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.dateOfBirth,
    required this.address,
    required this.city,
    required this.state,
    required this.postalCode,
    required this.country,
  }) : customerID = Uuid().v4();

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}

@JsonSerializable()
class LinkedPlatformAccount {
  @JsonKey(ignore: true)
  int id;
  String platformName;
  String accountID;
  DateTime linkedDate;

  LinkedPlatformAccount({
    this.id = 0,
    required this.platformName,
    required this.accountID,
    required this.linkedDate,
  });

  factory LinkedPlatformAccount.fromJson(Map<String, dynamic> json) =>
      _$LinkedPlatformAccountFromJson(json);
  Map<String, dynamic> toJson() => _$LinkedPlatformAccountToJson(this);
}

@JsonSerializable()
class IncomeStatement {
  @JsonKey(ignore: true)
  int id;
  String platformName;
  double amount;
  DateTime statementDate;

  IncomeStatement({
    this.id = 0,
    required this.platformName,
    required this.amount,
    required this.statementDate,
  });

  factory IncomeStatement.fromJson(Map<String, dynamic> json) =>
      _$IncomeStatementFromJson(json);
  Map<String, dynamic> toJson() => _$IncomeStatementToJson(this);
}

@JsonSerializable()
class SimulatedPaystub {
  @JsonKey(ignore: true)
  int id;
  double grossAmount;
  double netAmount;
  DateTime payDate;

  SimulatedPaystub({
    this.id = 0,
    required this.grossAmount,
    required this.netAmount,
    required this.payDate,
  });

  factory SimulatedPaystub.fromJson(Map<String, dynamic> json) =>
      _$SimulatedPaystubFromJson(json);
  Map<String, dynamic> toJson() => _$SimulatedPaystubToJson(this);
}

@JsonSerializable()
class ProofOfIncomeReport {
  @JsonKey(ignore: true)
  int id;
  String reportID;
  DateTime generationDate;
  bool isCertified;

  ProofOfIncomeReport({
    this.id = 0,
    required this.reportID,
    required this.generationDate,
    required this.isCertified,
  });

  factory ProofOfIncomeReport.fromJson(Map<String, dynamic> json) =>
      _$ProofOfIncomeReportFromJson(json);
  Map<String, dynamic> toJson() => _$ProofOfIncomeReportToJson(this);
}
