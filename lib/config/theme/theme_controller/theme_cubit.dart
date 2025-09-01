import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/services/database/shared_preferences/shared_pref_manager.dart';
import '../../../core/utils/cubit_states.dart';
import '../../../core/utils/logger/app_logger.dart';
import '../../router/app_router.dart';
import '../color_manager/colors.dart';

class ThemeCubit extends Cubit<DefaultState<ThemeMode>>
{
  ThemeCubit() : super(const InitialState())
  {
    loadSavedTheme();
  }

  Future<void> loadSavedTheme() async
  {
    emit(const LoadingState());
    try
    {
      final saved = SharedPrefManager().themeMode;
      final isDark = saved == 'dark';
      final theme = isDark ? ThemeMode.dark : ThemeMode.light;
      AppColors.i.themeMode = saved;
      AppLogger.debug('Default Theme is => ${theme.toString()}');
      emit(SuccessState(theme));
      _rebuildUI();
    } 
    catch (e)
    {
      emit(FailureState(e.toString()));
    }
  }

  void toggleTheme()
  {
    if (state is SuccessState<ThemeMode>)
    {
      final currentTheme = (state as SuccessState<ThemeMode>).data;
      final newTheme = currentTheme == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
      AppLogger.debug('newTheme is => ${newTheme.toString()}');
      _changeTheme(newTheme);
    }
  }

  void _changeTheme(ThemeMode mode)
  {
    try
    {
      emit(const LoadingState());
      AppColors.i.themeMode = mode.name;
      SharedPrefManager().setThemeMode(mode.name);
      emit(SuccessState(mode));
      _rebuildUI();
    }
    catch (e)
    {
      emit(FailureState(e.toString()));
    }
  }

  void _rebuildUI()
  {
    final ctx = AppRouter.navigatorState.currentContext;
    if (ctx is Element) ctx.visitChildren((child) => child.rebuild());
  }
}
