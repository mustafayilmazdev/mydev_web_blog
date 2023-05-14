import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'admin_viewmodel.dart';

class AdminViewTablet extends ViewModelWidget<AdminViewModel> {
  const AdminViewTablet({super.key});

  @override
  Widget build(BuildContext context, AdminViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, TABLET UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
