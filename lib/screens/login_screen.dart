import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Widget> background = [
      Positioned(
        top: -100,
        child: Transform.rotate(
          angle: 80 * (3.14159 / 180),
          child: Container(
            color: Theme.of(context).colorScheme.tertiary.withOpacity(0.1),
            width: 400.0,
            height: 800.0,
          ),
        ),
      ),
      Positioned(
        top: -50,
        child: Transform.rotate(
          angle: 80 * (3.14159 / 180),
          child: Container(
            color: Theme.of(context).colorScheme.tertiary.withOpacity(0.1),
            width: 400.0,
            height: 800.0,
          ),
        ),
      ),
      Positioned(
        top: 0,
        child: Transform.rotate(
          angle: 80 * (3.14159 / 180),
          child: Container(
            color: Theme.of(context).colorScheme.tertiary.withOpacity(0.1),
            width: 400.0,
            height: 800.0,
          ),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "login",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        centerTitle: false,
      ),
      body: Center(
        child: Stack(
          children: background + [
            Container(
              padding: EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Flexible(flex: 1, child: SizedBox(height: double.infinity,)),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.0),
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.onSurface)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.0),
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.onTertiaryContainer, width: 2.0),
                      ),
                      hintText: "Email",
                    ),
                  ),
                  SizedBox(height: 12.0,),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.0),
                          borderSide: BorderSide(color: Theme.of(context).colorScheme.onSurface)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.0),
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.onTertiaryContainer, width: 2.0),
                      ),
                      hintText: "Password",
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 12.0,),
                  FilledButton(
                    onPressed: () {},
                    child: Text("Proceed"),
                    style: FilledButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.tertiary,
                      foregroundColor: Theme.of(context).colorScheme.onTertiary,
                    ),
                  ),
                  Flexible(flex: 1, child: SizedBox(height: double.infinity,)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
