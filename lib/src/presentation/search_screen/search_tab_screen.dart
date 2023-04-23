import 'package:flutter/material.dart';
import 'package:habitual/src/presentation/search_screen/widgets/search_bar.dart';

import '../../core/core_export.dart';

class SearchTabScreen extends StatefulWidget {
  const SearchTabScreen({super.key});

  @override
  State<SearchTabScreen> createState() => _SearchTabScreenState();
}

class _SearchTabScreenState extends State<SearchTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SearchBar(),
            gapH12,
          ],
        ),
      ),
    );
  }
}
