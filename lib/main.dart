import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Student Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const StudentProfile(title: 'My Student Profile'),
    );
  }
}

class StudentProfile extends StatefulWidget {
  const StudentProfile({super.key, required this.title});

  final String title;

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  // ShowLink
  String _currentLink = 'https://github.com/kurtlvc';

  void _updateLink(String newLink) {
    setState(() {
      _currentLink = newLink;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          children: [
            const Icon(Icons.person),
            const SizedBox(width: 8),
            Text(widget.title),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const ProfileHeader(),
              const SizedBox(height: 16),
              ActionButtons(onLinkSelected: _updateLink),
              const SizedBox(height: 16),
              ShowLink(link: _currentLink),
              const SizedBox(height: 16),
              const PersonalInfoCard(),
              const SizedBox(height: 16),
              const EnrollmentInfo(),
              const SizedBox(height: 16),
              const AcademicInfo(),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

// Profile Picture + Full Name + Nickname
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile.jpeg'),
            ),
            const SizedBox(height: 12),
            const Text(
              'Kurt Lawrence V. Cabrera',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              '"Kuya Kurt"',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.normal),
            ),
          ],
        ),
      ),
    );
  }
}

// Age + Birthday + Address + Hobby + Motto + Course/Program + Year Level
class PersonalInfoCard extends StatelessWidget {
  const PersonalInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const [
          ListTile(
            leading: Icon(Icons.cake),
            title: Text('Age'),
            subtitle: Text('20'),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('Birthday'),
            subtitle: Text('December 27, 2005'),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Address'),
            subtitle: Text('Pamantasan ng Cabuyao, Cabuyao, Laguna'),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.sports_esports),
            title: Text('Hobby'),
            subtitle: Text('Computer Stuff, Minecraft, Hackintoshing'),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.format_quote),
            title: Text('Motto'),
            subtitle: Text('127.0.0.1 will return in Avengers'),
          ),
        ],
      ),
    );
  }
}

// Information
class EnrollmentInfo extends StatelessWidget {
  const EnrollmentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const [
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Course / Program'),
            subtitle: Text('BS Information Technology'),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.stairs),
            title: Text('Year Level'),
            subtitle: Text('3rd Year'),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.groups),
            title: Text('Section'),
            subtitle: Text('3IT-A'),
          ),
        ],
      ),
    );
  }
}

// Academic Information
class AcademicInfo extends StatelessWidget {
  const AcademicInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const [
          ListTile(
            leading: Icon(Icons.menu_book),
            title: Text('Favorite Subject'),
            subtitle: Text('Mobile Application Development'),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.code),
            title: Text('Programming Language'),
            subtitle: Text('Java, JavaScript, PHP, Kotlin, Dart, Flutter'),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.build),
            title: Text('Technical Skill'),
            subtitle: Text('Web / Mobile App Development'),
          ),
        ],
      ),
    );
  }
}

// Button Links
class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key, required this.onLinkSelected});

  final ValueChanged<String> onLinkSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            onLinkSelected('https://github.com/kurtlvc');
          },
          child: const Text('GitHub'),
        ),
        TextButton(
          onPressed: () {
            onLinkSelected('https://kurtlvc.github.io/');
          },
          child: const Text('Website'),
        ),
        TextButton(
          onPressed: () {
            onLinkSelected('https://www.facebook.com/me/');
          },
          child: const Text('Facebook'),
        ),
      ],
    );
  }
}

// Widget that changes when buttons are pressed
class ShowLink extends StatelessWidget {
  final String link;
  const ShowLink({super.key, required this.link});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        debugPrint('$link pressed');
      },
      child: Text(link),
    );
  }
}
