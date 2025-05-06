import 'package:e_book_store/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                              SvgPicture.asset("Assets/Icons/deshboard.svg"),
                              Text(
                                "E-BOOK",
                                style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Theme.of(context).colorScheme.background),
                                ),
                              CircleAvatar(
                                backgroundColor: Theme.of(context).colorScheme.background,
                                child: const Text(
                                  "s",
                                  style: TextStyle(
                                    color: primaryColor,
                                  ),
                                  ),
                                
                              )

                          ],
                        );
  }
}