import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:saving_app/styles/colors.dart';
import 'package:saving_app/styles/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: kBgColor.withOpacity(0.2),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 35,
                right: 30,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome",
                            style:
                                text13Medium.copyWith(color: kMatterhornBlack),
                          ),
                          Text(
                            "Enma Santana",
                            style: text18Bold.copyWith(color: kMatterhornBlack),
                          )
                        ],
                      ),
                      Container(
                        constraints: const BoxConstraints.expand(
                          height: 40,
                          width: 40,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/user-img.png'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: kGrey,
                                blurRadius: 5,
                                offset: Offset.fromDirection(2),
                              ),
                            ]),
                      )
                    ],
                  ),
                  const SizedBox(height: 28),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    constraints: const BoxConstraints.expand(height: 170),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/bg-container.png'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: kGrey,
                          blurRadius: 5,
                          offset: Offset.fromDirection(2),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'My Savings',
                          style: text13Reguler.copyWith(color: kWhite),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Rp. 10.430.000',
                          style: text24Semibold.copyWith(color: kWhite),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LinearPercentIndicator(
                          lineHeight: 4,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 0,
                          ),
                          progressColor: kEgyptianBlue,
                          percent: 0.3,
                          backgroundColor: kWhite,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Rp. 10.430.000 / Rp. 40.000.000",
                          style: text10Medium.copyWith(color: kWhite),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      _transactionButton('assets/icons/save.png', 'Save Money'),
                      const SizedBox(
                        width: 25,
                      ),
                      _transactionButton('assets/icons/save.png', 'Save Money'),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child:
                  DraggableScrollableSheet(builder: (context, scrollContainer) {
                return Container(
                  decoration: const BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  padding: const EdgeInsets.only(
                    left: 21,
                    right: 30,
                    top: 21,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 18),
                        child: SingleChildScrollView(
                          controller: scrollContainer,
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  "Transaction History",
                                  style: text18Semibold.copyWith(
                                      color: kLuckyBlue),
                                ),
                              ),
                              const SizedBox(
                                height: 31,
                              ),
                              _transactionList(
                                  kTreeGreen.withOpacity(0.2),
                                  "assets/icons/triangle-up.png",
                                  "Success!",
                                  "February 19, 03:25 PM",
                                  "+ 100.000"),
                              _transactionList(
                                  kTreeGreen.withOpacity(0.2),
                                  "assets/icons/triangle-up.png",
                                  "Success!",
                                  "February 16, 01:25 PM",
                                  "+ 150.000"),
                              _transactionList(
                                  kOrange.withOpacity(0.2),
                                  "assets/icons/triangle-down.png",
                                  "Starbucks Drinks",
                                  "February 10, 12:25 PM",
                                  "- 110.000"),
                              _transactionList(
                                  kOrange.withOpacity(0.2),
                                  "assets/icons/triangle-down.png",
                                  "Payment #Invest",
                                  "February 5, 11:05 PM",
                                  "- 130.000")
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 4,
                          width: 49,
                          color: kEgyptianBlue.withOpacity(0.1),
                        ),
                      )
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }

  Widget _transactionList(
      Color bgColor, String icon, String title, String sub, String amount) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          SizedBox(
            height: 30,
            width: 30,
            child: CircleAvatar(
              backgroundColor: bgColor,
              child: Image(
                image: AssetImage(icon),
                width: 14,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: text13Medium.copyWith(color: kLuckyBlue),
              ),
              Text(
                sub,
                style: text10Medium.copyWith(color: kLightGray),
              )
            ],
          ),
          const Spacer(),
          Text(
            amount,
            style: text13Semibold.copyWith(
              color: kLuckyBlue,
            ),
          )
        ],
      ),
    );
  }

  Widget _transactionButton(String icon, String text) {
    return Expanded(
      child: Container(
        constraints: const BoxConstraints.expand(
          height: 60,
        ),
        decoration: const BoxDecoration(
          color: kNightBlack,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: 24,
              color: kWhite,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: text13Medium.copyWith(color: kWhite),
            )
          ],
        ),
      ),
    );
  }
}
