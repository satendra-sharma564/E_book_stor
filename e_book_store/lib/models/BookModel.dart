// To parse this JSON data, do
//
//     final bookModel = bookModelFromJson(jsonString);

import 'dart:convert';

BookModel bookModelFromJson(String str) => BookModel.fromJson(json.decode(str));

String bookModelToJson(BookModel data) => json.encode(data.toJson());

class BookModel {
    String? id;
    String? title;
    String? description;
    String? rating;
    int? pages;
    String? language;
    String? audioLen;
    String? author;
    String? aboutAuthor;
    String? bookurl;
    String? audiourl;
    String? category;
    int? price;
    int? numberofRating;

    BookModel({
        this.id,
        this.title,
        this.description,
        this.rating,
        this.pages,
        this.language,
        this.audioLen,
        this.author,
        this.aboutAuthor,
        this.bookurl,
        this.audiourl,
        this.category,
        this.price,
        this.numberofRating,
    });

    factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        rating: json["rating"],
        pages: json["pages"],
        language: json["language"],
        audioLen: json["audioLen"],
        author: json["author"],
        aboutAuthor: json["aboutAuthor"],
        bookurl: json["bookurl"],
        audiourl: json["audiourl"],
        category: json["category"],
        price: json["price"],
        numberofRating: json["numberofRating"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "rating": rating,
        "pages": pages,
        "language": language,
        "audioLen": audioLen,
        "author": author,
        "aboutAuthor": aboutAuthor,
        "bookurl": bookurl,
        "audiourl": audiourl,
        "category": category,
        "price": price,
        "numberofRating": numberofRating,
    };
}
