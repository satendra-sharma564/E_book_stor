import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: SizedBox(
                        width: 120,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                                  spreadRadius: 0,
                                  blurRadius: 8,
                                  offset: Offset(2, 2)
                                )
                              ]),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "Assets/Images/hide ande seek.jpeg",
                                width: 120,
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Hide ande seek",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyMedium,
                            )
                          ],
                        ),
                      ),
    );
  }
}