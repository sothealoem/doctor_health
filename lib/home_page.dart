import 'package:doctor_health/widgets/health_needs.dart';
import 'package:doctor_health/widgets/nearby_doctors.dart';
import 'package:doctor_health/widgets/upcoming_card.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('hello'),
            Text(
              'how are you?',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.notifications_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.search),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(14),
        children: [
          //upcoming card
          const UpcomingCard(),
          const SizedBox(height: 20),
          Text(
            "Health Needs",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          //health needs
          const HealthNeeds(),
          const SizedBox(height: 30),
          //nearby doctors
          Text(
            "Nearby Doctor",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 20),
          const NearbyDoctors()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.calendar_outline),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.chatbubble_ellipses_outline),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
