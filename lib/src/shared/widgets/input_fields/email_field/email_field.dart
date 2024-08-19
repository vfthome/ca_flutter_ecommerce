import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../../../design_system/design_system.dart';
import '../../../modules/responsive_layout/constants/k_figma_auto_scale.dart';

class EmailField extends StatefulWidget {
  const EmailField({
    super.key,
    this.onDone,
    this.onChanged,
    this.finalAction = TextInputAction.next,
    this.canRequestFocus,
    this.emailFormKey,
  });

  final Function? onDone;
  final Function(String email)? onChanged;
  final TextInputAction? finalAction;
  final bool? canRequestFocus;
  final GlobalKey<FormState>? emailFormKey;

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  late final TextEditingController _textEditingController;
  late final GlobalKey<FormState> formKey;
  bool showClearButton = false;
  bool hasError = false;
  String inputValue = '';

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    formKey = widget.emailFormKey ?? GlobalKey<FormState>();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: TextFormField(
        //* VALIDATOR
        validator: (String? email) {
          hasError = !EmailValidator.validate(email ?? '');
          hasError
              ? debugPrint('[EMAIL FORM FIELD] Invalid email!')
              : setState(() {
                  showClearButton = false;
                });
          return hasError ? 'Por favor, insira um e-mail válido' : null;
        },
        //* ON CHANGED
        onChanged: (String email) {
          inputValue = email;
          // show / hide clear button
          if (email.isNotEmpty && showClearButton == false ||
              email.isEmpty && showClearButton == true) {
            setState(() {
              showClearButton = email.isNotEmpty;
            });
          }
          // on changed method execution (widget parameter)
          widget.onChanged != null ? widget.onChanged!(email) : null;
          // validate form if an error exists
          hasError ? formKey.currentState?.validate() : null;
        },
        //* ON DONE
        onEditingComplete: () {
          widget.onDone != null ? widget.onDone!() : null;
          formKey.currentState?.validate();
          EmailValidator.validate(_textEditingController.text)
              ? FocusScope.of(context).nextFocus()
              : null;
        },
        controller: _textEditingController,
        style: ds.typography.body,
        autofillHints: const [AutofillHints.email],
        keyboardType: TextInputType.emailAddress,
        textAlignVertical: TextAlignVertical.center,
        textInputAction: widget.finalAction,
        decoration: InputDecoration(
          //* CLEAR FIELD "X" BUTTON
          suffixIcon: GestureDetector(
            onTap: () {
              _textEditingController.clear();
              setState(() {
                showClearButton = false;
              });
            },
            child: showClearButton
                ? Icon(
                    Icons.close,
                    color: ds.colors.iconsDark.withOpacity(0.5),
                  )
                : const SizedBox(),
          ),
          border: InputBorder.none,
          fillColor: ds.colors.light,
          filled: true,
          hintText: 'E-mail',
          hintStyle: ds.typography.hint,
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
