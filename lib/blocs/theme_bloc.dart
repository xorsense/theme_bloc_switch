import 'package:flutter_bloc/flutter_bloc.dart';

import '../theme/theme.dart';
import 'theme_state.dart';
import 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(
          ThemeState(
            themeData: AppThemes.lightTheme,
          ),
        );
  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    yield ThemeState(
      themeData: event.appTheme == AppTheme.lightTheme
          ? AppThemes.lightTheme
          : AppThemes.darkTheme,
    );
  }
}
