import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydev/ui/common/app_constants.dart';
import 'package:mydev/ui/common/ui_helpers.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:stacked/stacked.dart';

import '../../common/shared_styles.dart';
import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        title: GradientText(
          radius: 20,
          'Do we make it difficult, does it happen us?',
          style: ktsBodyLarge,
          colors: const [Color(0xffA88BEB), Color(0xffF8CEEC)],
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 20,
        shape: const Border(
          bottom: BorderSide(color: Color(0xffA88BEB), width: 4),
        ),
        actions: [
          InkWell(
            onTap: viewModel.goLogin,
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                children: const [
                  Text(
                    'Giriş Yap',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.login_rounded,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      verticalSpaceMedium,
                      ClipRRect(
                        borderRadius: BorderRadius.circular(150),
                        child: Image.asset(
                          '../../../../assets/avatar.jpg',
                          fit: BoxFit.contain,
                        ),
                      ),
                      verticalSpaceMedium,
                      GradientText(
                        'MUSTAFA YILMAZ',
                        style: ktsBodyRegular,
                        colors: const [Color(0xffA88BEB), Color(0xffF8CEEC)],
                      ),
                      verticalSpaceMedium,
                      const Text(
                        'I got training in Management Information Systems and Computer Engineering. Now, I am continuing the Mobile and Web development field even I improved myself in Software, Hardware, Management, and Mathematic in this process. You can visit the About Me page if you would like to know me better.',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        verticalSpaceLarge,
                        GradientText(
                          'ARTICLES',
                          style: ktsTitleText,
                          colors: const [Color(0xffA88BEB), Color(0xffF8CEEC)],
                        ),
                        Container(
                            height: kdDesktopMaxContentHeight,
                            width: kdDesktopMaxContentWidth / 1.2,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListView.builder(
                                    itemCount: 6,
                                    itemBuilder: (BuildContext context,
                                            int index) =>
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            child: SizedBox(
                                              height:
                                                  kdDesktopMaxContentHeight / 2,
                                              child: Column(children: [
                                                Expanded(
                                                  flex: 2,
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: Image.network(
                                                      'https://assets-global.website-files.com/62666115cfab453aacbd513c/63c941205d8a3e1d1f094327_5%20Actionable%20Tips_%20How%20to%20Write%20a%20Blog%20Post%20that%20Ranks%20High%20and%20Attracts%20Traffic-p-1600.jpg',
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    width: double.infinity,
                                                    color: Colors.black,
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          'LOREM IPSUM',
                                                          style: TextStyle(
                                                              fontFamily: GoogleFonts
                                                                      .quicksand()
                                                                  .fontFamily,
                                                              fontSize: 42,
                                                              color: const Color(
                                                                  0xffA88BEB)),
                                                        ),
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: Text(
                                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut maximus metus. Mauris consequat suscipit nunc, ut iaculis ex rutrum cursus. Fusce volutpat sit amet justo vitae porttitor. ',
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                            ),
                                          ),
                                        ))))
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
