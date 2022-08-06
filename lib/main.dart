import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/bloc/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflix_clone/bloc/new_and_hot/new_and_hot_bloc.dart';
import 'package:netflix_clone/bloc/search/search_bloc.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/domain/di/injectible.dart';
import 'package:netflix_clone/presentation/root/app.dart';

import 'bloc/downloads/downloads_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<DownloadsBloc>()),
        BlocProvider(create: (context) => getIt<SearchBloc>()),
        BlocProvider(create: (context) => getIt<FastLaughBloc>()),
        BlocProvider(create: (context) => getIt<NewAndHotBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: backgroundColor,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: backgroundColor,
          ),
        ),
        themeMode: ThemeMode.system,
        home: const App(),
      ),
    );
  }
}
