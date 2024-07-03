import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;
  final String routeName;

  const MyButton({
    Key? key,
    required this.iconImagePath,
    required this.buttonText,
    required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65,
          padding: const EdgeInsets.all(17),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade600,
                blurRadius: 19,
                spreadRadius: 2,
              )
            ],
          ),
          child: Center(
            child: Image.asset(iconImagePath, fit: BoxFit.fill),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          buttonText,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
