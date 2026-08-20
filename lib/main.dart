import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Student Profile',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.blue),
      ),
      home: const StudentProfile(title: 'My Student Profile'),
    );
  }
}

class StudentProfile extends StatelessWidget {
  const StudentProfile({super.key, required this.title});
 
  final String title;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          children: [
            const Icon(Icons.person),
            const SizedBox(width: 8),
            Text(title),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              ProfileHeader(),
              ActionButtons(),
              SizedBox(height: 16),
              PersonalInfoCard(),
              SizedBox(height: 16),
              AcademicInfoCard(),
              SizedBox(height: 16),
              SkillsCard(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
 
// Top section: picture + name + nickname
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
              backgroundImage: AssetImage('images/IMG600.png'),
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
 
// Personal info: age, birthday, address, hobby, motto
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
 
// Academic info: course, year level, section
class AcademicInfoCard extends StatelessWidget {
  const AcademicInfoCard({super.key});
 
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
 
// Skills: favorite subject, programming language, technical skill
class SkillsCard extends StatelessWidget {
  const SkillsCard({super.key});
 
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
 
// Bottom buttons row
class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            debugPrint('GitHub pressed');
          },
          child: const Text('GitHub'),
        ),
        TextButton(
          onPressed: () {
            debugPrint('Website pressed');
          },
          child: const Text('Website'),
        ),
        TextButton(
          onPressed: () {
            debugPrint('Facebook pressed');
          },
          child: const Text('Facebook'),
        ),
        const SizedBox(width: 12),
        TextButton(
          onPressed: () {
            debugPrint('Share pressed');
          },
          child: const Text('Share'),
        ),
      ],
    );
  }
}