// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      address: json['address'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      postalCode: json['postalCode'] as String,
      country: json['country'] as String,
    )..customerID = json['customerID'] as String;

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'customerID': instance.customerID,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'postalCode': instance.postalCode,
      'country': instance.country,
    };

LinkedPlatformAccount _$LinkedPlatformAccountFromJson(
        Map<String, dynamic> json) =>
    LinkedPlatformAccount(
      platformName: json['platformName'] as String,
      accountID: json['accountID'] as String,
      linkedDate: DateTime.parse(json['linkedDate'] as String),
    );

Map<String, dynamic> _$LinkedPlatformAccountToJson(
        LinkedPlatformAccount instance) =>
    <String, dynamic>{
      'platformName': instance.platformName,
      'accountID': instance.accountID,
      'linkedDate': instance.linkedDate.toIso8601String(),
    };

IncomeStatement _$IncomeStatementFromJson(Map<String, dynamic> json) =>
    IncomeStatement(
      platformName: json['platformName'] as String,
      amount: (json['amount'] as num).toDouble(),
      statementDate: DateTime.parse(json['statementDate'] as String),
    );

Map<String, dynamic> _$IncomeStatementToJson(IncomeStatement instance) =>
    <String, dynamic>{
      'platformName': instance.platformName,
      'amount': instance.amount,
      'statementDate': instance.statementDate.toIso8601String(),
    };

SimulatedPaystub _$SimulatedPaystubFromJson(Map<String, dynamic> json) =>
    SimulatedPaystub(
      grossAmount: (json['grossAmount'] as num).toDouble(),
      netAmount: (json['netAmount'] as num).toDouble(),
      payDate: DateTime.parse(json['payDate'] as String),
    );

Map<String, dynamic> _$SimulatedPaystubToJson(SimulatedPaystub instance) =>
    <String, dynamic>{
      'grossAmount': instance.grossAmount,
      'netAmount': instance.netAmount,
      'payDate': instance.payDate.toIso8601String(),
    };

ProofOfIncomeReport _$ProofOfIncomeReportFromJson(Map<String, dynamic> json) =>
    ProofOfIncomeReport(
      reportID: json['reportID'] as String,
      generationDate: DateTime.parse(json['generationDate'] as String),
      isCertified: json['isCertified'] as bool,
    );

Map<String, dynamic> _$ProofOfIncomeReportToJson(
        ProofOfIncomeReport instance) =>
    <String, dynamic>{
      'reportID': instance.reportID,
      'generationDate': instance.generationDate.toIso8601String(),
      'isCertified': instance.isCertified,
    };
