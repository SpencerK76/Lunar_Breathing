// Import Flutter material design widgets
import 'package:flutter/material.dart';

// Import all your page widgets (ensure pages.dart exports AppPage1..4)
import 'pages/pages.dart';

// Define the main home page of your app
class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold provides basic visual layout structure: AppBar, Drawer, Body
    return Scaffold(
      // Top app bar with title
      appBar: AppBar(
        title: Text('Home'), // Displayed title in the AppBar
        backgroundColor: Colors.black, // Set AppBar background color to black
        iconTheme: IconThemeData(
          color: Colors.white, // Make the hamburger menu icon white
        ),
      ),

      // Drawer widget: sliding menu from the left
      drawer: Drawer(
        child: Container(
          color: Colors.black, // Set the background color of the drawer
          child: ListView(
            padding: EdgeInsets.zero, // Remove default padding from ListView
            children: [
              // Drawer header at the top
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey[900], // Dark grey header background
                ),
                child: Center(
                  child: Text(
                    'Menu', // Header text
                    style: TextStyle(
                      color: Colors.white, // White text color
                      fontSize: 24, // Large font size
                    ),
                  ),
                ),
              ),
              
              // ListTile for Page 1
              ListTile(
                leading: Icon(Icons.pages, color: Colors.white),
                title: Text('Page 1', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (_) => AppPage1()));
                },
              ),

              // ListTile for Page 2
              ListTile(
                leading: Icon(Icons.pages, color: Colors.white),
                title: Text('Page 2', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (_) => AppPage2()));
                },
              ),

              // ListTile for Page 3
              ListTile(
                leading: Icon(Icons.pages, color: Colors.white),
                title: Text('Page 3', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (_) => AppPage3()));
                },
              ),

              // ListTile for Page 4
              ListTile(
                leading: Icon(Icons.pages, color: Colors.white),
                title: Text('Page 4', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (_) => AppPage4()));
                },
              ),
            ],
          ),
        ),
      ),

      // Main body of the page
      body: Center(
        child: Image.asset(
          'assets/images/home_image.png', // Load the image from the assets folder
          fit: BoxFit.contain,            // Scale image to fit while maintaining aspect ratio
          width: double.infinity,         // Full width
          height: double.infinity,        // Full height
        ),
      ),
      backgroundColor: Colors.black, // Set the screen's background color to black
    );
  }
}
