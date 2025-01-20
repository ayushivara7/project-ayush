import 'package:flutter/material.dart';

void main() {
  runApp(ProjectAyushApp());
}

class ProjectAyushApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project Ayush',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Ayush'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EducationalContentPage()),
                );
              },
              child: Text('Educational Content'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SymptomCheckerPage()),
                );
              },
              child: Text('Symptom Checker'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RemindersPage()),
                );
              },
              child: Text('Reminders'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmergencyPage()),
                );
              },
              child: Text('Emergency Info'),
            ),
          ],
        ),
      ),
    );
  }
}

// Educational Content Page
class EducationalContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Educational Content'),
      ),
      body: Center(
        child: Text(
          'Educational articles and videos will be displayed here.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

// Symptom Checker Page
class SymptomCheckerPage extends StatefulWidget {
  @override
  _SymptomCheckerPageState createState() => _SymptomCheckerPageState();
}

class _SymptomCheckerPageState extends State<SymptomCheckerPage> {
  final TextEditingController _symptomController = TextEditingController();
  String _result = '';

  void _checkSymptoms() {
    setState(() {
      if (_symptomController.text.toLowerCase().contains('chest pain')) {
        _result = 'Seek medical attention immediately!';
      } else {
        _result = 'Monitor symptoms and consult a doctor if needed.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Symptom Checker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _symptomController,
              decoration: InputDecoration(
                labelText: 'Enter your symptoms',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _checkSymptoms,
              child: Text('Check Symptoms'),
            ),
            SizedBox(height: 16.0),
            Text(
              _result,
              style: TextStyle(fontSize: 18.0, color: Colors.red),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

// Reminders Page
class RemindersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reminders'),
      ),
      body: Center(
        child: Text(
          'Set health and check-up reminders here.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

// Emergency Info Page
class EmergencyPage extends StatelessWidget {
  void _makeEmergencyCall() async {
    // Use url_launcher package to make emergency calls
    // For now, this is just a placeholder function
    print('Emergency call function triggered!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Info'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Call emergency services or follow first aid steps.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _makeEmergencyCall,
              child: Text('Call Emergency Services'),
            ),
          ],
        ),
      ),
    );
  }
}
