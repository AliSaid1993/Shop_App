import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

import '../../../core/constants.dart';
import '../../../core/utils/size_config.dart';
import '../../../core/widgets/custom_buttons.dart';
import '../../Auth/presentaion/pages/login_view.dart';
import 'Custom_page_view.dart';
import 'custom_Indicator.dart';

class On_Bording_View_Body extends StatefulWidget {
  const On_Bording_View_Body({
    Key? key,
  }) : super(key: key);

  @override
  State<On_Bording_View_Body> createState() => _On_Bording_View_BodyState();
}

class _On_Bording_View_BodyState extends State<On_Bording_View_Body> {
  PageController? pageController;

  @override
  void initState() {
    // TODO: implement initState
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 24,
          left: 0,
          right: 0,
          child: CustomIndicator(
            dotindex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: const Text(
              'skip',
              style: TextStyle(
                fontFamily: 'Poppiins',
                fontSize: 14,
                color: Color(0xff898989),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Positioned(
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 10,
            child: CustomGeneralButton(
              onTap: () {
                if (pageController!.page! < 2) {
                  pageController?.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                } else {
                  Get.to(() => LoginView(),
                      transition: Transition.rightToLeft,
                      duration: Duration(milliseconds: 500));
                }
              },
              text: pageController!.hasClients
                  ? (pageController?.page == 2 ? 'Get Started' : 'next')
                  : 'next',
            )),
      ],
    );
  }
}
