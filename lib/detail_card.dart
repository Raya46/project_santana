import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    void _showBottomSheet(BuildContext context) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Item 1'),
                    onTap: () {
                      // Aksi yang ingin dilakukan saat item 1 dipilih
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.star_border),
                    title: Text('Item 2'),
                    onTap: () {
                      // Aksi yang ingin dilakukan saat item 2 dipilih
                      Navigator.pop(context);
                    },
                  ),
                  // Tambahkan item lain sesuai kebutuhan
                ],
              ),
            ),
          );
        },
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 5.0,
              backgroundColor: Colors.pink,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text('7 AM'),
              ),
            ),
          ],
        ),
        InkWell(
          onTap: () {
            _showBottomSheet(context);
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Design App'),
                      CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.green,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Design App'),
                      Text('nlanalnalnalnalanlan'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
