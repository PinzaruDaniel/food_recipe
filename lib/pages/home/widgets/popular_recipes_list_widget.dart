import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../view/view_models.dart';

class PopularRecipesListWidget extends StatefulWidget {
  const PopularRecipesListWidget({super.key, required this.author});
  final AuthorViewModel author;

  @override
  State<PopularRecipesListWidget> createState() => _PopularRecipesListWidgetState();
}

class _PopularRecipesListWidgetState extends State<PopularRecipesListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      height: 200,
      child: ListView.builder(scrollDirection: Axis.horizontal, itemCount: widget.author.id, itemBuilder: (context, index) {

        return Container(
          margin: EdgeInsets.all(8),
          color: Colors.deepPurple,
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset('assets/spaghetti.png'),
                  Text('Hello, ${widget.author[id]}'),
                ],
              ),
            ],

          ),
        );


      },) /*(ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.all(8),
            width: 40,
            color: Colors.deepPurple,
            child: Text('Hello, World!'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              color: Colors.deepPurple,
              child: Text('Hello, World!'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            width: 40,
            color: Colors.deepPurple,
            child: Text('Hello, World!'),
          ),
        ],
      ),*/
    );
  }
}
