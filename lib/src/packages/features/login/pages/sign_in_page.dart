import 'package:chateo/src/packages/core/ui/ui.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(ChateoDimens.dimen_20),
            children: [
              const SizedBox(height: ChateoDimens.dimen_20),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Sign up with ',
                  style: textTheme.labelLarge,
                  children: [
                    TextSpan(
                      text: 'Email',
                      style: textTheme.labelLarge?.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 10,
                        decorationColor:
                            theme.colorScheme.primary.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: ChateoDimens.dimen_20),
              Text(
                'Get chatting with friends and family today by signing up for our chat app!',
                style: TextStyle(
                  color: ChateoColors.darkGrey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ChateoDimens.dimen_40),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  label: Text('Your name'),
                ),
              ),
              const SizedBox(height: ChateoDimens.dimen_16),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  label: Text('Your email'),
                ),
              ),
              const SizedBox(height: ChateoDimens.dimen_16),
              TextFormField(
                textInputAction: TextInputAction.next,
                obscureText: true,
                decoration: const InputDecoration(
                  label: Text('Password'),
                ),
              ),
              const SizedBox(height: ChateoDimens.dimen_16),
              TextFormField(
                textInputAction: TextInputAction.done,
                obscureText: true,
                decoration: const InputDecoration(
                  label: Text('Confirm Password'),
                ),
              ),
              const SizedBox(height: ChateoDimens.dimen_92),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: ChateoDimens.dimen_20,
                ).copyWith(
                  bottom: ChateoDimens.dimen_32,
                ),
                child: const ElevatedButton(
                  onPressed: null,
                  child: Text('Create an account'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
