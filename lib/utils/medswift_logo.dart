import 'package:flutter/material.dart';

class MedswiftLogo extends StatelessWidget {
  const MedswiftLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            "MED",
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
              shadows: <Shadow>[
                Shadow(
                    offset: const Offset(5.0, 5.0),
                    blurRadius: 4.0,
                    color: Theme.of(context).colorScheme.onBackground.withOpacity(0.2),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: [
            const SizedBox(height: 1,),
            Text(
              "swift",
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
                shadows: <Shadow>[
                  Shadow(
                      offset: const Offset(5.0, 5.0),
                      blurRadius: 4.0,
                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
