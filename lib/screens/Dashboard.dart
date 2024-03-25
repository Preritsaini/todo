import 'package:flutter/material.dart';
import 'package:todo_list_project/screens/Calendar.dart';
import 'package:todo_list_project/screens/profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> TaskList = [];
  int _selectedIndex = 0; // Added to keep track of selected index

  bool isAllSelected = false;
  bool isWorkSelected = false;
  bool isPersonalSelected = false;
  bool isWishlistSelected = false;

  void _onContainerTapped(String container) {
    setState(() {
      switch (container) {
        case 'All':
          isAllSelected = !isAllSelected;
          break;
        case 'Work':
          isWorkSelected = !isWorkSelected;
          break;
        case 'Personal':
          isPersonalSelected = !isPersonalSelected;
          break;
        case 'Wishlist':
          isWishlistSelected = !isWishlistSelected;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => _onContainerTapped('All'),
                      child: Container(
                        height: 25,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: isAllSelected ? Colors.blue : Colors.blue[100],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("All"),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _onContainerTapped('Work'),
                      child: Container(
                        height: 25,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: isWorkSelected ? Colors.blue : Colors.blue[100],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Work"),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _onContainerTapped('Personal'),
                      child: Container(
                        height: 25,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: isPersonalSelected ? Colors.blue : Colors.blue[100],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Personal"),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _onContainerTapped('Wishlist'),
                      child: Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: isWishlistSelected ? Colors.blue : Colors.blue[100],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Wishlist"),
                          ],
                        ),
                      ),
                    ),
                    Icon(Icons.more_vert)
                  ],
                ),
                SizedBox(height: 130),
                Container(
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("https://i.ibb.co/2vRB3ft/Screenshot-from-2024-03-06-20-55-19-removebg-preview.png")
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        backgroundColor: Colors.blue[300],
                        onPressed: () {
                          addTask(context);

                        },
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.blue.withOpacity(1), // Default color with opacity
        selectedItemColor: Colors.blue, // Color when selected
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index; // Update selected index
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu),
                color: Colors.blue,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.calendar_month),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalenderScreen()),
                );
              },
              color: Colors.blue,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              color: Colors.blue,
            ),
            label: '',
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white30,
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage('https://i.ibb.co/BrY2xY2/Screenshot-from-2024-03-07-20-17-19.png')
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Upgrade to pro'),
              leading: Icon(Icons.star, color: Colors.yellow),
              onTap: () {
                // Add your logic here for the first drawer item
              },
            ),
            ListTile(
              title: Text('Special tasks'),
              leading: Icon(Icons.highlight, color: Colors.blueGrey),
              onTap: () {
                // Add your logic here for the second drawer item
              },
            ),
            ListTile(
              title: Text('Category'),
              leading: Icon(Icons.grid_on,
                color: Colors.blueGrey,),
              onTap: () {
              },
            ),
            ListTile(
              title: Text('Theme'),
              leading: Icon(Icons.format_paint,
                color: Colors.blueGrey,),
              onTap: () {
              },
            ),
            ListTile(
              title: Text('Widget'),
              leading: Icon(Icons.widgets,
                color: Colors.blueGrey,),
              onTap: () {
              },
            ),
            ListTile(
              title: Text('Donate'),
              leading: Icon(Icons.favorite,
                color: Colors.blueGrey,),
              onTap: () {
              },
            ),
            ListTile(
              title: Text('Family apps'),
              leading: Icon(Icons.add_box,
                color: Colors.blueGrey,),
              onTap: () {
              },
            ),
            ListTile(
              title: Text('Feedback'),
              leading: Icon(Icons.note,
                color: Colors.blueGrey,),
              onTap: () {
              },
            ),
            ListTile(
              title: Text('FAQ'),
              leading: Icon(Icons.question_mark_rounded,
                color: Colors.blueGrey,),
              onTap: () {
              },
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings,
                color: Colors.blueGrey,),
              onTap: () {
              },
            ),
            // Add more ListTiles for other drawer items
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Dashboard(),
  ));
}
void addTask(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add Task"),
          content: TextField(
            decoration: InputDecoration(hintText: "Enter your text here"),
            // onSubmitted: (),
          ),
          actions: [
            TextButton(onPressed: (){
            }, child: Text('Add Task')),
            TextButton(onPressed: (){Navigator.pop(
                context, MaterialPageRoute(builder: (context) => Dashboard()));
            }, child: Text('Cancel')),
          ],
        );
      });}