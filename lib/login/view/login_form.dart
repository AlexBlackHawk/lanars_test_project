import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign in",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: theme.onSurface,
                fontSize: 32,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: height * 0.09,
            ),
            TextField(
              enabled: true,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                // errorText: "Email is incorrect",
                // errorText: displayError != null ? 'invalid email' : null,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 2,
                    color: theme.surfaceTint,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 2,
                    color: theme.error,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 1,
                    color: theme.outline,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 1,
                    // color: theme.,
                  ),
                ),
                labelStyle: TextStyle(
                  color: theme.onSurfaceVariant,
                  fontSize: 16,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                ),
                errorStyle: TextStyle(
                  color: theme.error,
                  fontSize: 12,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                ),
                hintStyle: TextStyle(
                  color: theme.onSurfaceVariant,
                  fontSize: 16,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.045,
            ),
            TextField(
              enabled: true,
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w400,
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                // errorText: "Password is incorrect",
                // errorText: displayError != null ? 'invalid email' : null,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 2,
                    color: theme.surfaceTint,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 2,
                    color: theme.error,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 1,
                    color: theme.outline,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 1,
                    // color: theme.,
                  ),
                ),
                labelStyle: TextStyle(
                  color: theme.onSurfaceVariant,
                  fontSize: 16,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                ),
                errorStyle: TextStyle(
                  color: theme.error,
                  fontSize: 12,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                ),
                hintStyle: TextStyle(
                  color: theme.onSurfaceVariant,
                  fontSize: 16,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.055,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Log in",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  foregroundColor: theme.onPrimary,
                  backgroundColor: theme.primary,
                  fixedSize: Size(width, height * 0.05),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}