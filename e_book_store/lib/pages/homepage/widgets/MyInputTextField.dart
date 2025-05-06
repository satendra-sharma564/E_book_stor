import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyInputTextField extends StatelessWidget {
  const MyInputTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            SvgPicture.asset("Assets/Icons/search.svg"),
                            SizedBox(width: 10,),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "search here..",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  )
                                ),
                              ),
                              )
                          ],
                        ),
                       );
  }
}