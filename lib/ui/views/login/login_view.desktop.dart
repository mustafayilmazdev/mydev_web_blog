import 'package:flutter/material.dart';
import 'package:mydev/ui/common/app_colors.dart';
import 'package:mydev/ui/common/app_constants.dart';
import 'package:mydev/ui/common/shared_styles.dart';
import 'package:mydev/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginViewDesktop extends ViewModelWidget<LoginViewModel> {
  const LoginViewDesktop({super.key});

  @override
  Widget build(BuildContext context, LoginViewModel viewModel) {
    return Scaffold(
      backgroundColor: kcBlack,
      body: Center(
        child: SizedBox(
          width: kdDesktopMaxContentHeight * 0.5,
          child: Form(
            child: Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20,
                ),
                border: Border.all(color: Colors.white),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Kullanıcı Girişi',
                      style: ktsBodyLarge,
                    ),
                    verticalSpaceMedium,
                    Row(
                      children: [
                        const Expanded(flex: 1, child: Text('Kullanıcı Adı: ')),
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            style: const TextStyle(color: Colors.black),
                            cursorColor: const Color(0xffA88BEB),
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceSmall,
                    Row(
                      children: [
                        const Expanded(flex: 1, child: Text('Parola: ')),
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            style: const TextStyle(color: Colors.black),
                            cursorColor: const Color(0xffA88BEB),
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceMedium,
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Giriş Yap',
                          style: ktsBodyLarge.copyWith(color: Colors.black),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
