
import 'package:e_book_store/components/BookCard.dart';
import 'package:e_book_store/models/Data.dart';
import 'package:e_book_store/pages/homepage/widgets/AppBar.dart';
import 'package:e_book_store/pages/homepage/widgets/CategoryWidget.dart';
import 'package:e_book_store/pages/homepage/widgets/MyInputTextField.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.primary,
            height: 500,
            child: Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children:[
                        SizedBox(height: 50,),
                       HomeAppBar(),
                       SizedBox(height: 50),
                       Row(
                         children: [
                           Text(
                            "good morning",
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).colorScheme.background,
                            ),
                            ),
                           Text(
                            "satendra sharma",
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context).colorScheme.background,
                            ),)
                         ],
                       ),
                       SizedBox(height: 5),
                       Row(
                         children: [
                           Flexible(child: 
                           Text(
                            "Time to read book and enhance your knowledge",
                            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: Theme.of(context).colorScheme.background,
                            ),)),
                           
                         ],
                       ),
                       SizedBox(height: 20,),
                     MyInputTextField(),
                     SizedBox(height: 20),
                     Row(
                      children: [
                        Text(
                          "Topics",
                          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: Theme.of(context).colorScheme.background,
                          ),)
                      ],
                     ),
                     SizedBox(height: 10),
                     SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: 
                     Row(
                      children: categoryData.map((e)=> 
                      CategoryWidget(
                        iconPath: e["icon"]!, 
                        btnName: e["label"]!
                        ),
                      ).toList(),                      
                     ),
                     )
                        ],
                    ),
                  )
                ],
                
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                 
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Text(
                  "Trending",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  )
              ],
            ),
            
            SizedBox(height: 20,),
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                 child: Row(
                  children: [
                    BookCard(),
                    BookCard(),
                    BookCard(),
                    BookCard(),
                    BookCard(),
                  ]
                  ),
               ),
              ],
            ),
          ),         
        ],
      ),
    );
  }
}