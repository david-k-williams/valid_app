import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:valid/src/bloc/income_statement/income_statement_bloc.dart';
import 'package:valid/src/bloc/income_statement/income_statement_event.dart';
import 'package:valid/src/bloc/income_statement/income_statement_state.dart';
import 'package:valid/src/models/models.dart';
import 'package:valid/src/ui/widgets/base/add_income_card.dart';
import 'package:valid/src/ui/widgets/base/income_card.dart';
import 'package:valid/src/ui/widgets/base/summary_card.dart';

class IncomeStatementView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<IncomeStatementBloc>(context).add(
      LoadIncomeStatements(),
    );

    return BlocBuilder<IncomeStatementBloc, IncomeStatementState>(
      builder: (context, state) {
        if (state is IncomeStatementsLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is IncomeStatementsLoaded) {
          return Stack(
            children: [
              Container(margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(gradient: 
              LinearGradient(colors: [Theme.of(context).colorScheme.error])
              ),
              ),
               SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...state.incomeStatements.map((incomeStatement) {
                return SummaryCard(
                  title: incomeStatement.platformName,

                  icon: switch(incomeStatement.platformName){
                    "Uber" => Brand(Brands.uber_app),
                    "Fiverr" => Brand(Brands.fiverr),
                    "Uber Eats" => Brand(Brands.uber_eats),
                    _ => Brand(Brands.target_logo),
                  },
                  date: incomeStatement.statementDate.toString(),
                  amount: "\$${incomeStatement.amount.toString()}",
                );
              }).toList(),
              const AddIncomeCard(),

              ]
            ),
          )
            ],
          );
        } else if (state is IncomeStatementOperationFailure) {
          return Center(child: Text('Failed to load income statements'));
        } else {
          return Center(child: Text('No income statements available'));
        }
      },
    );
  }
}
