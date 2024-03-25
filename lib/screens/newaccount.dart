import 'package:flutter/material.dart';
import 'package:todo_list_project/screens/Dashboard.dart';

class NewaccountScreen extends StatefulWidget {
  const NewaccountScreen({super.key});

  @override
  State<NewaccountScreen> createState() => _NewaccountScreenState();
}

class _NewaccountScreenState extends State<NewaccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.done,
                    size: 40,
                  ),
                  Text("Tracker", style: TextStyle(fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),)
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text("Create account",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 25),),
                ],
              ),
              SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Email or phone number'
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Confirm password',
                ),
              ),
              SizedBox(height: 50),
              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Dashboard()));
              }, child: Container(alignment:
              Alignment.center,
                width: 230,
                height: 35,
                decoration: BoxDecoration(color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)),
                child: Text("Create Account",
                  style: TextStyle(fontSize: (20)),),)),
            ],
          ),
        ),
      ),
    );
  }
}
