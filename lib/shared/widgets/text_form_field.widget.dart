import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    this.autovalidateMode,
    this.validator,
    this.obscureText,
  });

  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final bool? obscureText;

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      autovalidateMode: widget.autovalidateMode,
      validator: widget.validator,
      obscureText: widget.obscureText == true ? _obscureText : false,
      decoration: InputDecoration(
        suffixIcon: widget.obscureText == true
            ? InkWell(
                onTap: onTapObscureText,
                child: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                ),
              )
            : null,
        labelText: widget.labelText,
        hintText: widget.hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  void onTapObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
