import 'package:flutter/material.dart';

class SidebarHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('Header Sidebar'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Menu 1'),
            onTap: () {
              // Aksi yang ingin dilakukan saat menu 1 diklik
            },
          ),
          ListTile(
            title: Text('Menu 2'),
            onTap: () {
              // Aksi yang ingin dilakukan saat menu 2 diklik
            },
          ),
          // Tambahkan menu lainnya sesuai kebutuhan
        ],
      ),
    );
  }
}
