import 'package:flutter/material.dart';

import '../../../design_system/design_system.dart';
import '../../../modules/responsive_layout/global_constants/k_figma_auto_scale.dart';

class PasswordFormField extends StatefulWidget {
  final Function onDone;
  final Function(String?) onChanged;
  final GlobalKey<FormState> formKey;
  final Function(bool)? onValidate;

  const PasswordFormField({
    super.key,
    required this.formKey,
    required this.onDone,
    required this.onChanged,
    this.onValidate,
  });

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool validateOnChanged = false;
  bool hidePassword = true;
  final TextEditingController textController = TextEditingController();

  //* VALIDATOR LOGIC
  bool validatePassword(String password) {
    // Between 8 and 16 characters, at least one uppercase letter, one lowercase letter and one number.
    final invalidPasswordRegex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d@$!%*?&]{8,16}$',
    );
    // if the password has a match with the regex, it is valid.
    final isValid = invalidPasswordRegex.hasMatch(password);

    if (widget.onValidate != null) {
      widget.onValidate!(isValid);
    }

    return isValid;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: TextFormField(
        //* VALIDATOR
        validator: (password) {
          final validationResponse = validatePassword(password ?? '')
              ? null
              : 'A senha deve conter:\n- De 8 a 16 caracteres.\n- Uma letra maiúscula (A).\n- Uma minúscula (a).\n- Um número (0 - 9).';
          bool isValid = validationResponse == null;
          !isValid ? validateOnChanged = true : validateOnChanged = false;
          return validationResponse;
        },
        //* ON DONE
        onEditingComplete: () {
          if (validatePassword(textController.text)) {
            widget.onDone();
          }
          widget.formKey.currentState!.validate();
        },
        //* ON CHANGED
        onChanged: (password) {
          widget.onChanged(password);
          validateOnChanged ? widget.formKey.currentState!.validate() : null;
        },
        controller: textController,
        keyboardType: TextInputType.visiblePassword,
        obscureText: hidePassword,
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 10 * figmaWidth,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  hidePassword = !hidePassword;
                });
              },
              child: Icon(
                hidePassword
                    ? Icons.visibility_off_rounded
                    : Icons.visibility_rounded,
                size: 24,
              ),
            ),
          ),
          hintText: 'Senha',
          hintStyle: ds.typography.hint,
          border: InputBorder.none,
          fillColor: ds.colors.light,
          filled: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20 * figmaWidth,
            vertical: 15 * figmaHeight,
          ),
          //* ENABLED BORDER
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15 * figmaDiagonal),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          //* FOCUSED BORDER
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15 * figmaDiagonal),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          //* ERROR BORDER
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15 * figmaDiagonal),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          //* DISABLED BORDER
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15 * figmaDiagonal),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          //* FOCUSED ERROR BORDER
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15 * figmaDiagonal),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}
