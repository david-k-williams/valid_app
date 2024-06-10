import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valid/src/bloc/authentication/authentication_event.dart';
import 'package:valid/src/bloc/customer/customer_bloc.dart';
import 'package:valid/src/bloc/income_statement/income_statement_bloc.dart';
import 'package:valid/src/bloc/theme/theme_bloc.dart';
import 'package:valid/src/bloc/theme/theme_state.dart';
import 'package:valid/src/repositories/customer_repo.dart';
import 'package:valid/src/repositories/income_statement_repo.dart';
import 'src/bloc/authentication/authentication_bloc.dart';
import 'src/di/injection.dart';
import 'src/constants/colors.dart';
import 'dart:ui';

import 'package:flutter/material.dart';
import './src/theme/theme.dart';
import './src/theme/util.dart';

import 'src/ui/screens/home_screen.dart';

void main() {
  setup(); // Initialize GetIt
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final brightness = PlatformDispatcher.instance.platformBrightness;

    // Retrieves the default theme for the platform
    //TextTheme textTheme = Theme.of(context).textTheme;

    // Use with Google Fonts package to use downloadable fonts
    TextTheme textTheme = createTextTheme(context, "Roboto", "Bevan");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationBloc>(
            create: (context) => AuthenticationBloc()..add(AppStarted()),
          ),
          BlocProvider<ThemeBloc>(
            create: (context) => ThemeBloc(),
          ),
          BlocProvider<CustomerBloc>(
            create: (context) =>
                CustomerBloc(customerRepository: getIt<CustomerRepository>()),
          ),
          BlocProvider<IncomeStatementBloc>(
            create: (context) => IncomeStatementBloc(
                incomeStatementRepository:
                    getIt<MockIncomeStatementRepository>()),
          ),
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return MaterialApp(
              title: 'Valid',
              theme:
                  state is ThemeChanged ? state.themeData : ThemeData.light(),
              home: HomeScreen(),
            );
          },
        ));
  }
}
