import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../bloc/login_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _emailFocusNode.addListener(() {
      if (!_emailFocusNode.hasFocus) {
        context.read<LoginBloc>().add(LoginEmailUnfocused());
        FocusScope.of(context).requestFocus(_passwordFocusNode);
      }
    });
    _passwordFocusNode.addListener(() {
      if (!_passwordFocusNode.hasFocus) {
        context.read<LoginBloc>().add(LoginPasswordUnfocused());
      }
    });
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final theme = Theme.of(context).colorScheme;

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(
                  'Server error. Please, try again',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: theme.onInverseSurface,
                    fontSize: 14,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                backgroundColor: theme.inverseSurface,
                showCloseIcon: true,
              ),
            );
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Padding(
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
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                  ),
                  focusNode: _emailFocusNode,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    context.read<LoginBloc>().add(LoginEmailChanged(email: value));
                  },
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    // errorText: "Email is incorrect",
                    errorText: !state.isValid ? 'Email is incorrect' : null,
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
                  focusNode: _passwordFocusNode,
                  textInputAction: TextInputAction.done,
                  enabled: !state.status.isInProgress,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  onChanged: (value) {
                    context.read<LoginBloc>().add(LoginPasswordChanged(password: value));
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    // errorText: "Password is incorrect",
                    errorText: !state.isValid ? 'Password is incorrect' : null,
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
                  onPressed: () {
                    context.read<LoginBloc>().add(const LoginSubmitted());
                  },
                  child: state.status.isInProgress ? CircularProgressIndicator(
                    color: theme.onPrimary,
                  ) : Text(
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
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}