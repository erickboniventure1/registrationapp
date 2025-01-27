import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    ActivitiesEventsPage(),
    ParticipantRegistrationPage(),
    StatusPage(),
  ];

  void _onDrawerItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context); // Close the drawer after selection
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Event Registration Platform"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                "Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: Text("Activities / Events"),
              onTap: () => _onDrawerItemTap(0),
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text("Participant Registration"),
              onTap: () => _onDrawerItemTap(1),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Status"),
              onTap: () => _onDrawerItemTap(2),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

// Page 1: Activities / Events
class ActivitiesEventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Activities / Events",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Table(
            border: TableBorder.all(),
            columnWidths: const <int, TableColumnWidth>{
              0: IntrinsicColumnWidth(),
              1: FlexColumnWidth(),
              2: FlexColumnWidth(),
              3: IntrinsicColumnWidth(),
            },
            children: [
              TableRow(
                decoration: BoxDecoration(color: Colors.grey[300]),
                children: [
                  Text("ID", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Activity Name",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Location",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Start Date",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("End Date",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              TableRow(children: [
                Text("EV/0001"),
                Text("Capacity Building Session (ZAMEP ICT & MOH ICT)"),
                Text("UDSM DHIS 2 Lab"),
                Text("16 December 2024"),
                Text("20 December 2024"),
              ]),
            ],
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Logic to display a form (if necessary)
            },
            child: Text("Register + Event/Activity"),
          ),
        ],
      ),
    );
  }
}

// Page 2: Participant Registration
class ParticipantRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Participant Registration",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Table(
            border: TableBorder.all(),
            columnWidths: const <int, TableColumnWidth>{
              0: IntrinsicColumnWidth(),
              1: FlexColumnWidth(),
              2: FlexColumnWidth(),
              3: IntrinsicColumnWidth(),
            },
            children: [
              TableRow(
                decoration: BoxDecoration(color: Colors.grey[300]),
                children: [
                  Text("ID", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Full Name",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Position",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Phone Number",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              TableRow(children: [
                Text("UR/PSI/001"),
                Text("Erick Boniventure"),
                Text("MIS / IT Coordinator"),
                Text("0766661506"),
                Text("eboniventure@psi.or.tz"),
              ]),
              TableRow(children: [
                Text("UR/PSI/002"),
                Text("Juma Hassan"),
                Text("IT Officer"),
                Text("0766661506"),
                Text("jhassan@zamep.go.tz"),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}

// Page 3: Status
class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Status",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
