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
            SafeArea(
              child: Image(
                image: AssetImage('assets/images/ob-money.png'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(33),
              constraints: BoxConstraints.expand(
                height: 300,
                width: 350,
              ),
              decoration: BoxDecoration(
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
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'welcome to Fleet Finance, the easy way to improve your finances and help you control expenses and income',
                    style: text13Reguler.copyWith(
                      color: kGrey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  TextButton(
                    onPressed: () {
                      print("hhahah");
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/main', (route) => false);
                    },
                    child: Text(
                      'Get Started',
                      style: text14Semibold.copyWith(color: kWhite),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: kBlueRibbon,
                      padding: EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 36,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
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
