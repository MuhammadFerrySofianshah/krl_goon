import 'package:flutter/material.dart';
import 'package:krl_goon/colors.dart';

class TextfieldNoHandphone extends StatefulWidget {
  const TextfieldNoHandphone({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<TextfieldNoHandphone> createState() => TextfieldNoHandphoneState();
}

class TextfieldNoHandphoneState extends State<TextfieldNoHandphone> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
       
        TextFormField(
          controller: widget.controller,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: yellowColor),
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: "Masukan No.Handphone Anda",
              //warna bg
              filled: true,
              fillColor: const Color(0xff121931).withOpacity(.08)),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Input your phone number... ';
            }
            return null;
          },
        ),
      ]),
    );
  }
}
