import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'admin_viewmodel.dart';

class AdminViewMobile extends ViewModelWidget<AdminViewModel> {
  const AdminViewMobile({super.key});

  @override
  Widget build(BuildContext context, AdminViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, MOBILE UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
