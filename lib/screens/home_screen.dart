import 'package:flutter/material.dart';
import 'package:tijolojolo_delivery/widgets/custom_header_widget.dart';
import 'package:tijolojolo_delivery/widgets/custom_search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: const [
              CustomHeaderWidget(),
              SizedBox(height: 20.0),
              CustomSearchWidget(),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
