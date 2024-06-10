import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valid/src/bloc/income_statement/income_statement_bloc.dart';
import 'package:valid/src/bloc/income_statement/income_statement_event.dart';
import 'package:valid/src/ui/widgets/base/add_income_card.dart';
import 'package:valid/src/ui/widgets/base/summary_card.dart';
import 'package:valid/src/ui/widgets/views/income_statement_view.dart';
import '../../bloc/authentication/authentication_bloc.dart';
import '../../bloc/authentication/authentication_state.dart';
import '../../bloc/authentication/authentication_event.dart';
import '../../bloc/theme/theme_bloc.dart';
import '../../bloc/theme/theme_event.dart';
import '../widgets/base/earnings_chart.dart';
import 'package:icons_plus/icons_plus.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    IncomeStatementBloc incomeStatementBloc = context.watch();
    return Scaffold(
      //floatingActionButton:
      appBar: AppBar(
        title: const Text('Valid'),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_1_outlined),
            onPressed: () {
              BlocProvider.of<ThemeBloc>(context).add(ToggleTheme());
            },
          ),
        ],
      ),

      body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationInitial) {
            return const Center(child: Text('Welcome to Valid!'));
          }
          if (state is AuthenticationLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is AuthenticationAuthenticated) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    BlocBuilder(
                      bloc: incomeStatementBloc,
                      builder: (context, state) {
                        return IncomeStatementView();
                      },
                    ),
                    const SizedBox(height: 20),
                    const EarningsChart(
                      dataPoints: [
                        FlSpot(0, 10),
                        FlSpot(1, 20),
                        FlSpot(2, 14),
                        FlSpot(3, 15),
                        FlSpot(4, 30),
                        FlSpot(5, 40),
                        FlSpot(6, 50),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<AuthenticationBloc>(context)
                            .add(LoggedOut());
                      },
                      child: const Text('Logout'),
                    ),
                  ],
                ),
              ),
            );
          }
          if (state is AuthenticationUnauthenticated) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<AuthenticationBloc>(context)
                          .add(LoggedOut());
                    },
                    child: const Text('Logout'),
                  ),
                ],
              ),
            );
          }
          if (state is AuthenticationFailure) {
            return Center(child: Text('Authentication Failed: ${state.error}'));
          }
          return Container();
        },
      ),
    );
  }
}
