import 'package:crypto_tokens_ui/core/themes.dart';
import 'package:crypto_tokens_ui/presentation/widgets/get_started_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          // solana
          Positioned(
            top: 10,
            right: 10,
            child: Image.asset(
              'lib/presentation/images/solana.png',
              height: 120,
              fit: BoxFit.cover,
            ),
          ),

          // illuvium
          Positioned(
            top: 35,
            left: 35,
            child: Image.asset(
              'lib/presentation/images/illuvium.png',
              height: 120,
              fit: BoxFit.cover,
            ),
          ),

          // bnb
          Positioned(
            top: 170,
            right: 0,
            child: Image.asset(
              'lib/presentation/images/bnb.png',
              height: 130,
              fit: BoxFit.cover,
            ),
          ),

          // tether
          Positioned(
            top: 180,
            left: 10,
            child: Image.asset(
              'lib/presentation/images/tether.png',
              height: 170,
              fit: BoxFit.cover,
            ),
          ),

          // ton
          Positioned(
            top: 300,
            right: 100,
            child: Image.asset(
              'lib/presentation/images/ton.png',
              height: 110,
              fit: BoxFit.cover,
            ),
          ),

          // bitcoin
          Positioned(
            top: 100,
            right: 100,
            child: Image.asset(
              'lib/presentation/images/bitcoin.png',
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 70.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'Your Crypto Journey:\nSimple & Secure',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Unlock the world of crypto with ease\nand confidence',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700,
                        ),
                  ),

                  const SizedBox(
                    height: 80,
                  ),

                  // get started button
                  const GetStartedButton(),

                  const SizedBox(
                    height: 20,
                  ),

                  // login instead
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Already have an account? ',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.05,
                            ),
                        children: [
                          TextSpan(
                            text: 'Login',
                            recognizer: TapGestureRecognizer(),
                            // ..onTap = viewModel.navigateToLoginPage,
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: CTColors.black,
                                      fontWeight: FontWeight.w800,
                                    ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
