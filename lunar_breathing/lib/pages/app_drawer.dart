import 'package:flutter/material.dart';
import 'pages.dart'; // Make sure this exports AppPage1..4

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black, // Drawer background
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey[900]),
              child: Center(
                child: Text(
                  'Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.pages, color: Colors.white),
              title: Text('Page 1', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => AppPage1()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.pages, color: Colors.white),
              title: Text('Page 2', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => AppPage2()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.pages, color: Colors.white),
              title: Text('Page 3', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => AppPage3()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.pages, color: Colors.white),
              title: Text('Page 4', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => AppPage4()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
