import 'package:flutter/material.dart';

import '../../../../config/router/app_router.dart';
import '../../../../config/router/app_routes.dart';
import '../../../../core/widgets/circular_indicator.dart';


class Splash extends StatefulWidget
{
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash>
{
  @override
  void initState()
  {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () => AppRouter.router.goNamed(AppRoutes.home),);
  }

  @override
  Widget build(BuildContext context) => 
    const Scaffold(body: CustomLoadingIndicator(),);
}