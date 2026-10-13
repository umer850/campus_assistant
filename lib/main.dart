import 'package:flutter/material.dart';

import 'theme/app_theme.dart';

void main() {
  runApp(const CampusAssistantApp());
}

class CampusAssistantApp extends StatelessWidget {
  const CampusAssistantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/logo.png', height: 32),
            const SizedBox(width: 8),
            const Text('Campus Assistant'),
          ],
        ),
        actions: const [
          CircleAvatar(backgroundImage: AssetImage('assets/profile.png')),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Upcoming Lecture container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Point 5: style read from the theme
                  Text(
                    'UPCOMING LECTURE',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const SizedBox(height: 8),
                  const Text('Starts in 25m', style: AppTheme.paragraph),
                  const SizedBox(height: 8),
                  const Text(
                    'CS302 • Software Engineering',
                    textAlign: TextAlign.center,
                    style: AppTheme.heading,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.apartment, color: AppTheme.primary),
                      const SizedBox(width: 8),
                      const Text('Tech Tower', style: AppTheme.paragraph),
                      const SizedBox(width: 24),
                      const Icon(Icons.meeting_room, color: AppTheme.primary),
                      const SizedBox(width: 8),
                      const Text(
                        'Room 304 (Level 3)',
                        style: AppTheme.paragraph,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.access_time, color: AppTheme.primary),
                      const SizedBox(width: 8),
                      const Text(
                        '10:30 AM - 12:00 PM',
                        style: AppTheme.paragraph,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Navigate to Class'),
                      ),
                      const SizedBox(width: 12),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.info_outline,
                          color: AppTheme.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Campus Services container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Campus Services', style: AppTheme.heading),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: _serviceCard(
                          Icons.map,
                          'Campus Map',
                          '3 public pins added',
                        ),
                      ),
                      Expanded(
                        child: _serviceCard(
                          Icons.apartment,
                          'Study Rooms',
                          '42 rooms free now',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: _serviceCard(
                          Icons.restaurant,
                          'Canteen Order',
                          '15% off lunch deals',
                        ),
                      ),
                      Expanded(
                        child: _serviceCard(
                          Icons.campaign,
                          'Notices',
                          '2 unread bulletins',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Map'),
          BottomNavigationBarItem(
            icon: Icon(Icons.apartment),
            label: 'Buildings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Canteen',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.campaign), label: 'Notices'),
        ],
      ),
    );
  }

  // Reusable card used four times in the Campus Services section
  Widget _serviceCard(IconData icon, String title, String subtitle) {
    return Container(
      height: 130,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFE3EAFF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 32, color: AppTheme.primary),
          const SizedBox(height: 8),
          Text(
            title,
            style: AppTheme.paragraph.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: AppTheme.paragraph.copyWith(fontSize: 13),
          ),
        ],
      ),
    );
  }
}
