import 'package:flutter/material.dart';
import 'package:omnia/Resources/Theme/theme.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: navColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: primaryColor,
            ),
            child: Center(
              child: Text(
                'Council Members',
                style: TextStyle(
                  color: itemColor,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          // Custom card 1
          _buildDrawerCard(
            heading: 'Chairperson',
            subheading: 'Position 1',
            imagePath: 'assets/profile1.png',
          ),
          // Custom card 2
          _buildDrawerCard(
            heading: 'Vice Chairperson',
            subheading: 'Position 2',
            imagePath: 'assets/profile2.png',
          ),
          // Custom card 3
          _buildDrawerCard(
            heading: 'Webmaster',
            subheading: 'Position 3',
            imagePath: 'assets/profile3.png',
          ),
          // Custom card 4
          _buildDrawerCard(
            heading: 'Treasurer',
            subheading: 'Position 4',
            imagePath: 'assets/profile4.png',
          ),
          // Custom card 5
          _buildDrawerCard(
            heading: 'Secretary',
            subheading: 'Position 5',
            imagePath: 'assets/profile5.png',
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerCard({
    required String heading,
    required String subheading,
    required String imagePath,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          title: Text(heading),
          subtitle: Text(subheading),
          leading: CircleAvatar(
            backgroundImage: AssetImage(imagePath),
          ),
          onTap: () {
            // Handle card
          },
        ),
      ),
    );
  }
}
