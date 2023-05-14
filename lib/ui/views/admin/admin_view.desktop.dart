import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'admin_viewmodel.dart';

class AdminViewDesktop extends ViewModelWidget<AdminViewModel> {
  const AdminViewDesktop({super.key});

  @override
  Widget build(BuildContext context, AdminViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, DESKTOP UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
