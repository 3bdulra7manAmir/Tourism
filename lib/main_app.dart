import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/i18n/generated/l10n.dart';
import '../config/router/app_router.dart';
import '../config/theme/theme_manager/themes.dart';
import 'config/i18n/localization_controller/localization_cubit.dart';
import 'config/theme/theme_controller/theme_cubit.dart';
import 'core/utils/cubit_states.dart';

class Tourism extends StatelessWidget
{
  const Tourism({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const TourismDevicePreview();
  }
}


class TourismDevicePreview extends StatelessWidget
{
  const TourismDevicePreview({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return DevicePreview(
      enabled: false,
      builder: (context) => const TourismScreenUtil(),
    );
  }
}


class TourismScreenUtil extends StatelessWidget
{
  const TourismScreenUtil({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return ScreenUtilInit(
      designSize: const Size(440, 956),
      builder: (context, child) => const TourismMultiProvider(),
    );
  }
}


class TourismMultiProvider extends StatelessWidget
{
  const TourismMultiProvider({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return MultiBlocProvider(
      providers:
      [
        BlocProvider(create: (_) => ThemeCubit()),
        BlocProvider(create: (_) => LocalizationCubit()),
      ],
      child: const TourismMaterial(),
    );
  }
}


class TourismMaterial extends StatelessWidget
{
  const TourismMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, DefaultState<ThemeMode>>(
      builder: (context, themeState) {
        ThemeMode themeMode = ThemeMode.dark;
        if (themeState is SuccessState<ThemeMode>) themeMode = themeState.data;

        return BlocBuilder<LocalizationCubit, DefaultState<Locale>>(
          builder: (context, localeState) {
            Locale locale = const Locale('ar');
            if (localeState is SuccessState<Locale>) locale = localeState.data;

            return MaterialApp.router(
              routerConfig: AppRouter.router,

              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              locale: locale,

              theme: AppTheme.lightTheme(),
              darkTheme: AppTheme.darkTheme(),
              themeMode: themeMode,

              debugShowCheckedModeBanner: false,
            );
          },
        );
      },
    );
  }
}

