import 'package:flutter/material.dart';

import '../../core/core_export.dart';
import 'widgets/search_bar.dart';

class SearchTabScreen extends StatefulWidget {
  const SearchTabScreen({super.key});

  @override
  State<SearchTabScreen> createState() => _SearchTabScreenState();
}

class _SearchTabScreenState extends State<SearchTabScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomSearchBar(),
            gapH12,
          ],
        ),
      ),
    );
  }
}
