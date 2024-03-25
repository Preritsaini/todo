import 'package:flutter/material.dart';
import 'package:todo_list_project/screens/Dashboard.dart';
import 'package:todo_list_project/screens/newaccount.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to ",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                "Tracker ",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://i.ibb.co/6RvxNJt/Screenshot-from-2024-03-05-18-49-30-removebg-preview.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email or phone number',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              MaterialButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              }, child: Container(
                alignment:Alignment.center,decoration: BoxDecoration(
                color: Colors.blueGrey[200],
                borderRadius: BorderRadius.circular(10),
              ),
                height: 40,
                width: 300,
                child: Text("Sign in",style: TextStyle(fontSize: 20
                ),),),),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 60),
                  Text("Don't have a Tracker account",style: TextStyle(
                      fontSize: 16
                  ),),
                  TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewaccountScreen()),
                    );
                  }, child: Text(
                    "Click here",
                    style: TextStyle(color: Colors.blue),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
