import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide.none,
            ),
          ),
        )),
        const SizedBox(
          width: 15.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.filter,
                color: Colors.white,
              )),
        )
      ],
    );
  }
}
