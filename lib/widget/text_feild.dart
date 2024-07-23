import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.hintText,
    this.icon,
    this.onPressed,
    required this.obscureText,
    this.prefixIcon,
  });

  final String hintText;
  final IconData? icon;
  final Icon? prefixIcon;

  final void Function()? onPressed;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextFormField(
              style: const TextStyle(fontSize: 20, color: Colors.grey),
              obscureText: obscureText,
              decoration: InputDecoration(
                prefixIcon: prefixIcon,
                suffixIcon: IconButton(
                  onPressed: onPressed,
                  icon: Icon(icon),
                  color: Colors.black,
                ),
                hintText: hintText,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xff0F0C80),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xff0F0C80)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
