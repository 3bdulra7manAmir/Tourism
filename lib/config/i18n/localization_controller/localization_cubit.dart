import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/services/database/shared_preferences/shared_pref_manager.dart';
import '../../../core/utils/cubit_states.dart';
import '../../../core/utils/logger/app_logger.dart';

class LocalizationCubit extends Cubit<DefaultState<Locale>> {
  LocalizationCubit() : super(const InitialState()) {
    loadSavedLocale();
  }

  /// Load saved locale from Shared Preferences
  void loadSavedLocale() {
    emit(const LoadingState());
    try {
      final savedLang = SharedPrefManager().localeLang; // 'en' or 'ar'
      final locale = Locale(savedLang);
      AppLogger.debug('Default Localization is => $savedLang');
      emit(SuccessState(locale));
    } catch (e) {
      emit(FailureState(e.toString()));
    }
  }

  /// Switch to English
  void setEnglish() {
    try {
      emit(const LoadingState());
      emit(const SuccessState(Locale('en')));
      SharedPrefManager().setLocaleLang('en');
      AppLogger.debug('Localization is now: en');
    } catch (e) {
      emit(FailureState(e.toString()));
    }
  }

  /// Switch to Arabic
  void setArabic() {
    try {
      emit(const LoadingState());
      emit(const SuccessState(Locale('ar')));
      SharedPrefManager().setLocaleLang('ar');
      AppLogger.debug('Localization is now: AR');
    } catch (e) {
      emit(FailureState(e.toString()));
    }
  }
}