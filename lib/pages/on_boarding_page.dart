import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saving_app/styles/colors.dart';
import 'package:saving_app/styles/text_style.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  static const nameRoute = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kTropicalBlue.withOpacity(0.5),
        child: Column(
          children: [
            const SafeArea(
              child: Image(
                image: AssetImage('assets/images/ob-money.png'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(33),
              constraints: const BoxConstraints.expand(
                height: 300,
                width: 350,
              ),
              decoration: const BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Welcome',
                    style: text24Semibold.copyWith(color: kBlack),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'welcome to Fleet Finance, the easy way to improve your finances and help you control expenses and income',
                    style: text13Reguler.copyWith(
                      color: kGrey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  TextButton(
                    onPressed: () {
                      print("hhahah");
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/main', (route) => false);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: kBlueRibbon,
                      padding: const EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 36,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    child: Text(
                      'Get Started',
                      style: text14Semibold.copyWith(color: kWhite),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
