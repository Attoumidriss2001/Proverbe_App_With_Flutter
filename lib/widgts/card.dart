import 'package:flutter/material.dart';

import '../main.dart';

class CardWidget extends StatelessWidget {
  final Function delete;
  final BestQuotes item;

  const CardWidget({
    Key? key,
    required this.delete,
    required this.item,
  }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 57, 66, 151),
      margin: EdgeInsets.all(11),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
      child: Container(
        padding: EdgeInsets.all(11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(item.title,
                style: TextStyle(fontSize: 27, color: Colors.white),
                textDirection: TextDirection.rtl),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    delete(item);
                  },
                  icon: Icon(Icons.delete),
                  iconSize: 27,
                  color: Color.fromARGB(255, 255, 217, 217),
                ),
                Text(item.author,
                    style: TextStyle(fontSize: 17, color: Colors.white),
                    textDirection: TextDirection.rtl),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
