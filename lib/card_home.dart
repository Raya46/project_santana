import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  final String notes;
  final List<dynamic> allNotes;
  const CardHome({
    super.key,
    required this.notes,
    required this.allNotes,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0), // Sudut bulat atas kiri
                  bottomLeft: Radius.circular(10.0), // Sudut bulat bawah kiri
                ),
                color: Colors.grey[200], // Warna latar belakang
              ),
              width: MediaQuery.of(context).size.width * 0.25,
              height: MediaQuery.of(context).size.height * 0.27,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(notes),
                  Text('Notes'),
                ],
              )),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.green],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.52,
            height: MediaQuery.of(context).size.height * 0.27,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: allNotes
                    .map<Widget>((item) => Text(
                          item.toString(),
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ))
                    .toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
