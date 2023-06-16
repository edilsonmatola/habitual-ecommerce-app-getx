import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:habitual/src/core/core_export.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required this.labelText,
    this.isSecret = false,
    this.inputFormatters,
    this.initialValue,
    this.isReadOnly = false,
    this.validator,
    this.controller,
    this.textInputType,
    this.onSaved,
    this.formFieldKey,
  }) : super(key: key);

  final String labelText;

  final bool isSecret;
  final List<TextInputFormatter>? inputFormatters;
  final String? initialValue;
  final bool isReadOnly;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final GlobalKey<FormFieldState>? formFieldKey;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  // * Obscure text while typing
  bool _isObscure = false;

  @override
  void initState() {
    _isObscure = widget.isSecret;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: Get.textTheme.bodyMedium,
        ),
        gapH4,
        TextFormField(
          key: widget.formFieldKey,
          style: Get.textTheme.displaySmall,
          controller: widget.controller,
          keyboardType: widget.textInputType,
          readOnly: widget.isReadOnly,
          initialValue: widget.initialValue,
          inputFormatters: widget.inputFormatters,
          obscureText: _isObscure,
          validator: widget.validator,
          onSaved: widget.onSaved,
          decoration: InputDecoration(
            isDense: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.neutral300,
              ),
              borderRadius: BorderRadius.circular(
                Sizes.p6,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.neutral300,
              ),
              borderRadius: BorderRadius.circular(
                Sizes.p6,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.neutral300,
              ),
              borderRadius: BorderRadius.circular(
                Sizes.p6,
              ),
            ),
            suffixIcon: widget.isSecret
                ? InkWell(
                    borderRadius: BorderRadius.circular(100),
                    onTap: () {
                      setState(
                        () {
                          _isObscure = !_isObscure;
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(
                        Sizes.p12,
                      ),
                      child: SvgPicture.asset(
                        _isObscure ? AppIcons.eyeOffIcon : AppIcons.eyeIcon,
                      ),
                    ),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
