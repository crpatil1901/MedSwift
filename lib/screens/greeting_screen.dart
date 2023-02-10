import 'package:flutter/material.dart';
import 'package:med_swift/utils/medswift_logo.dart';

class GreetingScreen extends StatelessWidget {
  const GreetingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget greetingCard = Column(
      children: [
        Text(
          "Welcome to",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
        const MedswiftLogo(),
        Card(
          // color: Theme.of(context).colorScheme.primaryContainer,
          color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0)
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Text(
                  "All your medical needs fulfilled in a jiffy!",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );

    Widget buttons = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.tertiary,
            foregroundColor: Theme.of(context).colorScheme.onTertiary,
          ),
          onPressed: () {},
          child: const Text("I'm a new patient! Sign up"),
        ),
        const SizedBox(width: 12.0,),
        FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.tertiary,
            foregroundColor: Theme.of(context).colorScheme.onTertiary,
          ),
          onPressed: () {},
          child: const Text("I'm a regular. Log in"),
        ),
      ],
    );

    Widget emergencyButton = FloatingActionButton.extended(
      onPressed: () {},
      label: const Text("Emergency"),
      icon: const Icon(Icons.emergency),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      foregroundColor: Theme.of(context).colorScheme.onSecondary,
    );

    return Scaffold(
      floatingActionButton: emergencyButton,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const Flexible(
              flex: 2,
              child: SizedBox(height: double.infinity,),
            ),
            greetingCard,
            const SizedBox(height: 50,),
            buttons,
            const Flexible(
              flex: 1,
              child: SizedBox(height: double.infinity,),
            ),
          ],
        ),
      ),
    );
  }
}
