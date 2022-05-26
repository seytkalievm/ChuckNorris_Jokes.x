import 'package:flutter/material.dart';
import 'package:flutter_hw/joke%20widgets/joke.dart';
import 'package:flutter_hw/networking/networking.dart';


class Categories extends StatelessWidget{
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder <List>(
        future: fetchCategories(),
        builder: (context, snapshot){
          final data = snapshot.data;
          if(data == null){
            return const CircularProgressIndicator();
          }else{
            var categories = ['random'];
            for (var category in data){
              categories.add(category);
            }
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: categories.length,
              itemBuilder: (context, i){
                return InkWell(
                  child: Category(categories[i]),
                  onTap: () => showDialog(
                      context: context,
                      builder: (BuildContext context) => JokeDialog(categories[i]),
                    ),
                );
              },
            );
          }
        },
      ),
    );
  }
}



class Category extends StatelessWidget{
  const Category(this.category, {Key? key}): super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            width: 5,
            color: Colors.orangeAccent,
          ),
        ),
      ),
      child: Text(
        "${category[0].toUpperCase()}${category.substring(1)}",
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}