import 'package:e_commerce/common/widget/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce/features/shop/view/home/widget/home_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  // App bar With cart icon , title and subtitle
                  HomeAppbar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//check out master
//update master
//create branch
//code ....
