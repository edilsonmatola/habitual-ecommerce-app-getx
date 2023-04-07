import 'package:flutter/material.dart';

import '../../core/core_export.dart';

class ProfileTabScreen extends StatefulWidget {
  const ProfileTabScreen({super.key});

  @override
  State<ProfileTabScreen> createState() => _ProfileTabScreenState();
}

class _ProfileTabScreenState extends State<ProfileTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(
          left: AppSizes.p24,
          right: AppSizes.p24,
          top: AppSizes.p56,
          bottom: AppSizes.p32,
        ),
        child: Column(
          children:  [],
        ),
      ),
    );
  }
}
