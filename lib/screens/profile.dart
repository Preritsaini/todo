import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Row(children: [
                  CircleAvatar(radius: 40,
                    child: Icon(Icons.person),),
                  SizedBox(width: 10),
                  Text('Keep plans for 1...',style: TextStyle(
                      fontSize: 17
                  ),)
                ],),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('Tasks Overview',
                      style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 20),
                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Container(height: 80,width: 170,decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(15)
                    ),
                      child: Column(children: [
                        Text('0',style: TextStyle(fontSize: 30),),
                        Text("Completed Tasks",style: TextStyle(fontSize: 17),)
                      ],),),
                    SizedBox(width: 30),
                    Container(height: 80,width: 170,decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(15)
                    ),
                        child: Column(children: [
                          Text('0',style: TextStyle(fontSize: 30),),
                          Text("Pending Tasks",style: TextStyle(fontSize: 17),)
                        ],))
                  ],),
                ),
                SizedBox(height: 40),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color:  Colors.blue[200]
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      Text("Tasks in upcoming days",style:
                      TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ), SizedBox(height: 40),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color:  Colors.blue[200]
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Text('Pending Tasks',style: TextStyle(fontWeight: FontWeight.bold
                              ,
                              fontSize: 20),),
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down))

                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
