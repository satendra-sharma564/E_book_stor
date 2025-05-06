
import 'package:e_book_store/components/MyButton.dart';
import 'package:e_book_store/pages/homepage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            height: 500,
            color: Theme.of(context).colorScheme.primary,
            child: Row(mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     const SizedBox(height: 10,),
                      Image.asset(
                        "Assets/Images/book.png",
                        width: 250,
                        ),
                       const SizedBox(height: 10,),
                      Text(
                        "E - Book Store",
                        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: Theme.of(context).colorScheme.background,
                        ),
                      ),
                     const SizedBox(height: 10,),
                       Text(
                        "Here you can find best book for you and you can also read book and listens book ",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Theme.of(context).colorScheme.background,
                        ),
                      )
                      ],
                  ),
                )
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
               const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Disclaimer",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Theme.of(context).colorScheme.error),
                    )
                  ],
                ),
              const SizedBox(height: 10,),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        "n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum",
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,),
                      
                      ),
                    ),
                  ],
                ),
         
              ],
            ),
            ),
       const Spacer(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: 
              PrimaryButton(
                btnName: "CONTINOUE", 
              onTap: (){
                Get.offAll(HomePage());
              },
              ),
          )
      


        ],
      )
        
    );
  }
}