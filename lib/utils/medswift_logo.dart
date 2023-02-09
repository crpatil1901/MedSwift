import 'package:flutter/material.dart';

class MedswiftLogo extends StatelessWidget {
  const MedswiftLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "MED",
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            shadows: <Shadow>[
              Shadow(
                  offset: Offset(5.0, 5.0),
                  blurRadius: 4.0,
                  color: Theme.of(context).colorScheme.onPrimary
              ),
            ],
          ),
        ),
        Container(
          color: Colors.purple,
          child: Stack(
              children: [
                Positioned(
                  child: Text(
                    "swift",
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset(5.0, 5.0),
                            blurRadius: 4.0,
                            color: Theme.of(context).colorScheme.onPrimary
                        ),
                      ],
                    ),
                  ),
                ),
              ]
          ),
        ),
      ],
    );
  }
}
