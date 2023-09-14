// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:santana_project/detail_card.dart';

class DetailPage extends StatefulWidget {
  final List<dynamic> allNotes;
  final String date;
  const DetailPage({Key? key, required this.allNotes, required this.date})
      : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 24.0,
              ),
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    widget.date,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    color: Colors.pink,
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_circle_sharp,
                      size: 50,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return DetailCard();
                  },
                ),
              )
            ],
          ),
        ));
  }
}
