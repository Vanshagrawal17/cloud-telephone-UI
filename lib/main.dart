import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JS Cloud Minds',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/reset_password': (context) => ResetPasswordScreen(),
        '/menu': (context) => MenuScreen(),
        '/leads': (context) => LeadsScreen(),
        '/backlogs': (context) => BacklogsScreen(),
        '/status': (context) => StatusScreen(name: '', phone: '',),
        '/contacts': (context) => ContactsScreen(),
        '/ongoing_call': (context) => OngoingCallScreen(name: '', phone: '',),
        '/Settings_Screen':(context) => SettingsScreen (),
        '/Profile':(context) => ProfileScreen (),
      },
        debugShowCheckedModeBanner: false
    );
  }
}

// Splash Screen
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 1 seconds (1000 milliseconds)
    Future.delayed(const Duration(milliseconds: 1000), () {
      // Navigate to the main screen after 1 seconds
      Navigator.pushReplacementNamed(context, "/login");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 325,
              height: 111,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/company logo.png"),
                  fit: BoxFit.contain,
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5), // Spacing between logo and text
            Text(
              'Next-Gen Cloud Telephony Powered by AI',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Login Screen
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Using MediaQuery to adjust container size dynamically
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenWidth,
              height: screenHeight,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: screenWidth,
                      height: screenHeight,
                      decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.087,
                    top: 78,
                    child: Container(
                      width: screenWidth * 0.8,
                      height: 162,
                      child: Column(
                        children: [
                          Container(
                            width: screenWidth * 0.8,
                            height: 118.3,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/company logo.png"),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Next-Gen Cloud Telephony Powered by AI',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 266,
                    bottom: 0,
                    child: Container(
                      width: screenWidth,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 60),
                        child: Column(
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                color: Color(0xFF1A428A),
                                fontSize: 40,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 50),
                            // User ID Field
                            Material(
                              color: Colors.transparent,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                  color: Color(0xFFE0E0E0),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'User ID',
                                    hintStyle: TextStyle(color: Colors.grey[700]),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            // Password Field
                            Material(
                              color: Colors.transparent,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                  color: Color(0xFFE0E0E0),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                    hintStyle: TextStyle(color: Colors.grey[700]),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 40),
                            // Login Button
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => LeadsScreen()),
                                );
                              },
                              child: Container(
                                width: 167.11,
                                height: 53.31,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF007AFF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w800,
                                      letterSpacing: -0.23,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            // Forget Password Button
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ResetPasswordScreen()),
                                );
                              },
                              child: Text(
                                'Forget Password ?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Reset Password Screen
class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo and Heading
                Container(
                  width: 325,
                  height: 162,
                  child: Column(
                    children: [
                      Container(
                        width: 325,
                        height: 118.3,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/company logo.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Next-Gen Cloud Telephony Powered by AI',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                // Reset Password Heading
                const Text(
                  'Reset Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 20),
                // Instruction Text
                const Text(
                  'Enter your User ID to receive an email with a \nsecure link to reset your password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xBF606060),
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 40),
                // User ID TextField
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Color(0xFFE0E0E0),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextField(
                    style: TextStyle(color: Colors.black), // Set input text color to black
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'User ID',
                      hintStyle: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                // Submit Button
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // Navigates back to the previous page (assumed to be Login)
                  },
                  child: Container(
                    width: 167.11,
                    height: 53.31,
                    decoration: BoxDecoration(
                      color: Color(0xFF007AFF),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.23,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Menu Screen
class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context); // Goes back to the previous page
            },
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    'VA',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        title: SizedBox.shrink(), // Remove the default title
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 16), // Adds space between AppBar and heading box
          Container(
            color: Colors.grey[300],
            padding: EdgeInsets.all(5),
            child: Text(
              "Manage",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.person, color: Colors.blue),
                  title: Text("Profile"),
                  onTap: () {
                    Navigator.pushNamed(context, '/Profile');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.backup, color: Colors.blue),
                  title: Text("Backlogs"),
                  onTap: () {
                    Navigator.pushNamed(context, '/backlogs');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.people_alt_sharp, color: Colors.blue),
                  title: Text("Leads"),
                  onTap: () {
                    Navigator.pushNamed(context, '/leads');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.contacts, color: Colors.blue),
                  title: Text("Contacts"),
                  onTap: () {
                    Navigator.pushNamed(context, '/contacts');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.blue),
                  title: Text("Settings"),
                  onTap: () {
                    Navigator.pushNamed(context, '/Settings_Screen');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.blue),
                  title: Text("Sign Out"),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Leads Screen
class LeadsScreen extends StatefulWidget {
  @override
  _LeadsPageState createState() => _LeadsPageState();
}

class _LeadsPageState extends State<LeadsScreen> {
  final List<Map<String, String>> contacts = [
    {"name": "Abigail Nartey", "phone": "+9192xxxx78", "initial": "A"},
    {"name": "Abigail Tetteh", "phone": "+9192xxxx54", "initial": "A"},
    {"name": "Abena Kyekyeku", "phone": "+9192xxxx74", "initial": "A"},
    {"name": "Bernard Kyei", "phone": "+9195xxxxxx56", "initial": "B"},
    {"name": "Bro. Ben", "phone": "+23xxxx89", "initial": "B"},
    {"name": "Charles Asare", "phone": "+9193xxxx42", "initial": "C"},
    {"name": "Samuel Tetteh", "phone": "+9195xxx57", "initial": "S"},
    {"name": "Samuel Backham", "phone": "+9195xxx57", "initial": "S"},
  ];

  late List<Map<String, String>> filteredContacts;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredContacts = contacts;
    searchController.addListener(_filterContacts);
  }

  void _filterContacts() {
    final query = searchController.text.toLowerCase();
    setState(() {
      filteredContacts = contacts
          .where((contact) =>
      contact['name']!.toLowerCase().contains(query) ||
          contact['phone']!.contains(query))
          .toList();
    });
  }

  void showAddCallDialog() {
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add Call"),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Customer Name"),
                SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: firstNameController,
                        decoration: InputDecoration(
                          hintText: "First Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        controller: lastNameController,
                        decoration: InputDecoration(
                          hintText: "Last Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text("Mobile Number"),
                SizedBox(height: 8),
                TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    hintText: "Phone Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 8, horizontal: 12),
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ],
            ),
          ),
          actions: [
            Center(
              child: IconButton(
                icon: Icon(Icons.call, size: 48),
                color: Colors.green,
                onPressed: () {
                  // Navigate to the OngoingCallScreen with entered name and phone number
                  String fullName =
                      '${firstNameController.text} ${lastNameController.text}';
                  String phoneNumber = phoneController.text;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OngoingCallScreen(
                        name: fullName,
                        phone: phoneNumber,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  String getInitials(String name) {
    List<String> nameParts = name.split(" ");
    String initials = "";
    for (var part in nameParts) {
      if (part.isNotEmpty) {
        initials += part[0];
      }
    }
    return initials;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuScreen()),
              );
            },
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('VA', style: TextStyle(color: Colors.white)),
                ),
                Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        title: Text(
          'Leads',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_call, color: Colors.black),
            onPressed: showAddCallDialog,
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: "Search by name or number",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredContacts.length,
                itemBuilder: (context, index) {
                  var contact = filteredContacts[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (index == 0 ||
                          contact['initial'] !=
                              filteredContacts[index - 1]['initial'])
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Text(
                            contact['initial']!,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text(
                            getInitials(contact['name']!),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        title: Text(contact['name']!),
                        subtitle: Text(contact['phone']!),
                        trailing: InkWell(
                          onTap: () {
                            // Navigate to the OngoingCallScreen with the selected contact details
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OngoingCallScreen(
                                  name: contact['name']!,
                                  phone: contact['phone']!,
                                ),
                              ),
                            );
                          },
                          child: Icon(Icons.call, color: Colors.black),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[300],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.backup), label: "BackLogs"),
          BottomNavigationBarItem(icon: Icon(Icons.people_alt_sharp), label: "Leads"),
          BottomNavigationBarItem(icon: Icon(Icons.contacts), label: "Contacts"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
        currentIndex: 1,
        onTap: (index) {
          // Handle bottom navigation
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BacklogsScreen()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LeadsScreen()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ContactsScreen()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsScreen()),
            );
          }
        },
      ),
    );
  }
}

// Backlogs Screen

class BacklogsScreen extends StatefulWidget {
  @override
  _BacklogsPageState createState() => _BacklogsPageState();
}

class _BacklogsPageState extends State<BacklogsScreen> {
  final List<Map<String, String>> contacts = [
    {"name": "Abigail Nartey", "phone": "+9192xxxx78", "initial": "A"},
    {"name": "Abigail Tetteh", "phone": "+9192xxxx54", "initial": "A"},
    {"name": "Abena Kyekyeku", "phone": "+9192xxxx74", "initial": "A"},
    {"name": "Bernard Kyei", "phone": "+9195xxxxxx56", "initial": "B"},
    {"name": "Bro. Ben", "phone": "+23xxxx89", "initial": "B"},
    {"name": "Charles Asare", "phone": "+9193xxxx42", "initial": "C"},
    {"name": "Samuel Tetteh", "phone": "+9195xxx57", "initial": "S"},
    {"name": "Samuel Backham", "phone": "+9195xxx57", "initial": "S"},
  ];

  late List<Map<String, String>> filteredContacts;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredContacts = contacts;
    searchController.addListener(_filterContacts);
  }

  void _filterContacts() {
    final query = searchController.text.toLowerCase();
    setState(() {
      filteredContacts = contacts
          .where((contact) =>
      contact['name']!.toLowerCase().contains(query) ||
          contact['phone']!.contains(query))
          .toList();
    });
  }

  String getInitials(String name) {
    List<String> nameParts = name.split(" ");
    String initials = "";
    for (var part in nameParts) {
      if (part.isNotEmpty) {
        initials += part[0];
      }
    }
    return initials;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuScreen()),
              );
            },
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('VA', style: TextStyle(color: Colors.white)),
                ),
                Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        title: Text(
          'Backlogs',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_call, color: Colors.black),
            onPressed: () {
              // Add Call functionality (if needed)
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: "Search by name or number",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredContacts.length,
                itemBuilder: (context, index) {
                  var contact = filteredContacts[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (index == 0 ||
                          contact['initial'] !=
                              filteredContacts[index - 1]['initial'])
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Text(
                            contact['initial']!,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text(
                            getInitials(contact['name']!),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        title: Text(contact['name']!),
                        subtitle: Text(contact['phone']!),
                        trailing: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StatusScreen(
                                  name: contact['name']!,
                                  phone: '',
                                ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                          ),
                          child: Text("Submit"),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[300],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.backup), label: "BackLogs"),
          BottomNavigationBarItem(icon: Icon(Icons.people_alt_sharp), label: "Leads"),
          BottomNavigationBarItem(icon: Icon(Icons.contacts), label: "Contacts"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BacklogsScreen()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LeadsScreen()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ContactsScreen()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsScreen()),
            );
          }
        },
      ),
    );
  }
}

// Status Screen
class StatusScreen extends StatefulWidget {
  final String name;
  final String phone;

  StatusScreen({required this.name, required this.phone});

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  final TextEditingController commentController = TextEditingController();
  String? interactionLevel;
  String? interestLevel;
  DateTime selectedDate = DateTime.now();
  int selectedHour = DateTime.now().hour;
  int selectedMinute = DateTime.now().minute;
  bool showDateTimePickers = false;

  void showAddCallDialog() {
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add Call"),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Customer Name"),
                SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: firstNameController,
                        decoration: InputDecoration(
                          hintText: "First Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        controller: lastNameController,
                        decoration: InputDecoration(
                          hintText: "Last Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text("Mobile Number"),
                SizedBox(height: 8),
                TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    hintText: "Phone Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ],
            ),
          ),
          actions: [
            Center(
              child: IconButton(
                icon: Icon(Icons.call, size: 48),
                color: Colors.green,
                onPressed: () {
                  String fullName =
                      '${firstNameController.text} ${lastNameController.text}';
                  String phoneNumber = phoneController.text;

                  Navigator.pop(context); // Close the dialog
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OngoingCallScreen(
                        name: fullName,
                        phone: phoneNumber,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  String getInitials(String name) {
    List<String> nameParts = name.split(" ");
    String initials = "";
    for (var part in nameParts) {
      if (part.isNotEmpty) {
        initials += part[0];
      }
    }
    return initials;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuScreen()),
                );
              },
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text('VA', style: TextStyle(color: Colors.white)),
                  ),
                  Positioned(
                    bottom: 1,
                    right: 1,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Text(
              '${widget.name} Status',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_ic_call),
            onPressed: showAddCallDialog,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fill Status for ${widget.name}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('Comment', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            TextFormField(
              controller: commentController,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Enter your comment',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Customer Interaction Level',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: interactionLevel,
              items: [
                'Documentation Pending',
                'Awaiting Feedback',
                'Follow-up Required',
              ].map((String category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  interactionLevel = value!;
                });
              },
              dropdownColor: Colors.white,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Interest Level',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: interestLevel,
              items: [
                'Interested',
                'Not Interested',
                'Call Back',
              ].map((String status) {
                return DropdownMenuItem<String>(
                  value: status,
                  child: Text(status),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  interestLevel = value;
                  showDateTimePickers = interestLevel == 'Call Back';
                });
              },
              dropdownColor: Colors.white,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 20),
            if (showDateTimePickers) ...[
              Text(
                'Schedule Next Call',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: CalendarDatePicker(
                      initialDate: selectedDate,
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(Duration(days: 365)),
                      onDateChanged: (date) {
                        setState(() {
                          selectedDate = date;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CupertinoTimerPicker(
                      mode: CupertinoTimerPickerMode.hm,
                      initialTimerDuration: Duration(
                          hours: selectedHour, minutes: selectedMinute),
                      onTimerDurationChanged: (Duration newDuration) {
                        setState(() {
                          selectedHour = newDuration.inHours;
                          selectedMinute = newDuration.inMinutes % 60;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_validateFields()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Status submitted successfully!')),
                    );
                    Future.delayed(Duration(seconds: 1), () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LeadsScreen()),
                      );
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text("Submit"),
              ),
            )
          ],
        ),
      ),
    );
  }

  bool _validateFields() {
    String errorMessage = "";

    if (commentController.text.isEmpty) {
      errorMessage += "Comment is required.\n";
    }
    if (interactionLevel == null || interactionLevel!.isEmpty) {
      errorMessage += "Customer Interaction Level is required.\n";
    }
    if (interestLevel == null || interestLevel!.isEmpty) {
      errorMessage += "Interest Level is required.\n";
    }
    if (showDateTimePickers && interestLevel == "Call Back") {
      if (selectedDate.isBefore(DateTime.now()) ||
          (selectedDate.isAtSameMomentAs(DateTime.now()) &&
              (selectedHour < DateTime.now().hour ||
                  (selectedHour == DateTime.now().hour &&
                      selectedMinute < DateTime.now().minute)))) {
        errorMessage += "Please select a valid future date and time.\n";
      }
    }

    if (errorMessage.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage.trim()),
          backgroundColor: Colors.red,
        ),
      );
      return false;
    }

    return true;
  }
}

// Contacts Screen
class ContactsScreen extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsScreen> {
  final List<Map<String, String>> contacts = [
    {"name": "Abigail Nartey", "phone": "+9192xxxx78"},
    {"name": "Abigail Tetteh", "phone": "+9192xxxx54"},
    {"name": "Abena Kyekyeku", "phone": "+9192xxxx74"},
    {"name": "Bernard Kyei", "phone": "+9195xxxxxx56", "department": "Sales Department"},
    {"name": "Bro. Ben", "phone": "+23xxxx89", "department": "HR Department"},
    {"name": "Charles Asare", "phone": "+9193xxxx42", "department": "Technical Support"},
    {"name": "Samuel Tetteh", "phone": "+9195xxx57", "department": "Sales Department"},
    {"name": "Samuel Backham", "phone": "+9195xxx57", "department": "HR Department"},
  ];

  late List<Map<String, String>> filteredContacts;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredContacts = contacts;
    searchController.addListener(_filterContacts);
  }

  void _filterContacts() {
    final query = searchController.text.toLowerCase();
    setState(() {
      filteredContacts = contacts
          .where((contact) =>
      contact['name']!.toLowerCase().contains(query) ||
          contact['phone']!.contains(query))
          .toList();
    });
  }

  void showAddCallDialog() {
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add Call"),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Customer Name"),
                SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: firstNameController,
                        decoration: InputDecoration(
                          hintText: "First Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        controller: lastNameController,
                        decoration: InputDecoration(
                          hintText: "Last Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text("Mobile Number"),
                SizedBox(height: 8),
                TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    hintText: "Phone Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ],
            ),
          ),
          actions: [
            Center(
              child: IconButton(
                icon: Icon(Icons.call, size: 48),
                color: Colors.green,
                onPressed: () {
                  String fullName =
                      '${firstNameController.text} ${lastNameController.text}';
                  String phoneNumber = phoneController.text;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OngoingCallScreen(
                        name: fullName,
                        phone: phoneNumber,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuScreen()),
              );
            },
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('VA', style: TextStyle(color: Colors.white)),
                ),
                Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        title: Text(
          'Contacts',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_call, color: Colors.black),
            onPressed: showAddCallDialog,
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: "Search by name or number",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredContacts.length,
                itemBuilder: (context, index) {
                  var contact = filteredContacts[index];

                  // Determine if the contact should be pinned or displayed under a department
                  bool isPinned = index < 3;
                  bool showDepartmentHeader = !isPinned &&
                      (index == 3 ||
                          contact['department'] !=
                              filteredContacts[index - 1]['department']);

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (showDepartmentHeader)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Text(
                            contact['department']!,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text(
                            contact['name']![0],
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        title: Row(
                          children: [
                            Text(contact['name']!),
                            if (isPinned) ...[
                              SizedBox(width: 8),
                              Icon(Icons.push_pin, color: Colors.red, size: 20),
                            ],
                          ],
                        ),
                        subtitle: Text(contact['phone']!),
                        trailing: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OngoingCallScreen(
                                  name: contact['name']!,
                                  phone: contact['phone']!,
                                ),
                              ),
                            );
                          },
                          child: Icon(Icons.call, color: Colors.black),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[300],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.backup), label: "BackLogs"),
          BottomNavigationBarItem(icon: Icon(Icons.people_alt_sharp), label: "Leads"),
          BottomNavigationBarItem(icon: Icon(Icons.contacts), label: "Contacts"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BacklogsScreen()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LeadsScreen()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ContactsScreen()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsScreen()),
            );
          }
        },
      ),
    );
  }
}

// Ongoing Call Screen
class OngoingCallScreen extends StatefulWidget {
  final String name;
  final String phone;

  OngoingCallScreen({required this.name, required this.phone});

  @override
  _OngoingCallScreenState createState() => _OngoingCallScreenState();
}

class _OngoingCallScreenState extends State<OngoingCallScreen> {
  bool isMuted = false;
  bool isOnHold = false;
  List<Map<String, String>> participants = []; // List to hold conference participants

  @override
  void initState() {
    super.initState();
    // Initialize with the main call participant
    participants.add({"name": widget.name, "phone": widget.phone});
  }

  void _toggleMute() {
    setState(() {
      isMuted = !isMuted;
    });
  }

  void _toggleHold() {
    setState(() {
      isOnHold = !isOnHold;
    });
  }

  void _addCall() async {
    // Assume contacts page returns a selected contact as a Map
    final newParticipant = await Navigator.pushNamed(context, '/contacts') as Map<String, String>?;

    if (newParticipant != null) {
      setState(() {
        participants.add(newParticipant); // Add new participant to the conference
      });
    }
  }

  void _transferCall() {
    Navigator.pushNamed(context, '/contacts'); // Opens contacts page to transfer the call
  }

  void _endCall() {
    Navigator.pushReplacementNamed(context, '/status'); // Ends call and navigates to status screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Centered content at the top
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Column(
              children: [
                Text(
                  'Ongoing Call',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                SizedBox(height: 20),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, size: 50, color: Colors.black),
                ),
                SizedBox(height: 16),
                Text(
                  participants[0]['name']!, // Display the main participant’s name
                  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  participants[0]['phone']!,
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  '00:54', // You can replace this with a timer
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
          ),
          Spacer(),
          // Displaying conference participants
          if (participants.length > 1)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: participants.skip(1).map((participant) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Text(participant['name']![0], style: TextStyle(color: Colors.white)),
                    ),
                    title: Text(
                      participant['name']!,
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      participant['phone']!,
                      style: TextStyle(color: Colors.grey),
                    ),
                  );
                }).toList(),
              ),
            ),
          Spacer(),
          // Four buttons in a square layout
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        isMuted ? Icons.mic_off : Icons.mic,
                        color: Colors.grey,
                      ),
                      onPressed: _toggleMute,
                    ),
                    Text('Mute', style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.pause,
                        color: isOnHold ? Colors.red : Colors.grey,
                      ),
                      onPressed: _toggleHold,
                    ),
                    Text('Hold', style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.add, color: Colors.grey),
                      onPressed: _addCall,
                    ),
                    Text('Add', style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.call_merge, color: Colors.grey),
                      onPressed: _transferCall,
                    ),
                    Text('Transfer', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          // Call end button at the bottom center
          FloatingActionButton(
            onPressed: _endCall,
            backgroundColor: Colors.red,
            child: Icon(Icons.call_end),
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}

// SettingsScreen
class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white, // Set the background color to white
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            // Profile Section
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text('Profile'),
              subtitle: Text('Update your profile details'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
            ),
            Divider(),

            // Call Logs Settings
            ListTile(
              leading: Icon(Icons.phone, color: Colors.red),
              title: Text('Call Logs'),
              subtitle: Text('Manage call log preferences'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Call Logs Page
              },
            ),
            Divider(),

            // Support and FAQs
            ListTile(
              leading: Icon(Icons.help, color: Colors.teal),
              title: Text('Support & FAQs'),
              subtitle: Text('Get help or learn about the app'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Support & FAQs Page
              },
            ),
            Divider(),

            // Logout Option
            ListTile(
              leading: Icon(Icons.logout, color: Colors.grey),
              title: Text('Logout'),
              onTap: () {
                _showLogoutDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Logout'),
        content: Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the dialog
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the dialog
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }
}

//Profile Screen
class ProfileScreen extends StatelessWidget {
  String getInitials(String name) {
    List<String> nameParts = name.split(" ");
    String initials = "";
    for (var part in nameParts) {
      if (part.isNotEmpty) {
        initials += part[0];
      }
    }
    return initials.toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    String fullName = "Vansh Agrawal";
    String userId = "vansh123";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black), // Black text for contrast
        ),
        backgroundColor: Colors.white, // White app bar
        iconTheme: IconThemeData(color: Colors.black), // Black icons for contrast
        elevation: 0, // No shadow for a clean look
      ),
      body: Container(
        color: Colors.white, // Set the background color to white
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture with Initials
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.blue,
                  child: Text(
                    getInitials(fullName),
                    style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Full Name Field
              ListTile(
                leading: Icon(Icons.person, color: Colors.blue),
                title: Text('Full Name'),
                subtitle: Text(fullName),
              ),
              Divider(),

              // User ID Field
              ListTile(
                leading: Icon(Icons.account_circle, color: Colors.orange),
                title: Text('User ID'),
                subtitle: Text(userId),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}


