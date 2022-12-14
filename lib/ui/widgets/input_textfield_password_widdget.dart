
import 'package:flutter/material.dart';

import '../general/colors.dart';

class InputTextFieldPasswordWidget extends StatefulWidget {
  TextEditingController controller;
  InputTextFieldPasswordWidget({
    required this.controller,
  });

  @override
  State<InputTextFieldPasswordWidget> createState() => _InputTextFieldPasswordWidgetState();
}

class _InputTextFieldPasswordWidgetState extends State<InputTextFieldPasswordWidget> {
  bool isInvisible = true;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(vertical: 7.0),
      child: TextFormField(
        controller: widget.controller,
        obscureText: isInvisible,
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xff262A34).withOpacity(0.1),
          hintText: "Contraseña",
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 14.0,
          ),
          counterText: "",
          suffixIcon: IconButton(
            onPressed: () {
              isInvisible = !isInvisible;
              setState(() {});
            },
            icon: Icon(
              isInvisible
                  ? Icons.remove_red_eye
                  : Icons.remove_red_eye_outlined,
              color: Colors.white70,
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18.0),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
            borderSide: BorderSide.none,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
            borderSide: BorderSide.none,
          ),
          errorStyle: const TextStyle(
            color: kErrorColor,
          ),
        ),
        validator: (String? value) {
          if (value!.isEmpty) return "El campo es obligatorio";
          return null;
        },
      ),
    );
  }
}
