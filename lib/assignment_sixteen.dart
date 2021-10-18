import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'model/assignmet_model.dart';


class Assignmentsix extends StatefulWidget {
  const Assignmentsix({Key? key}) : super(key: key);

  @override
  _AssignmentsixState createState() => _AssignmentsixState();
}

class _AssignmentsixState extends State<Assignmentsix> {
  Assignment? assignment;
@override

  void initState(){
    loadAssignment();
    super.initState();
  }
@override
  void dispose(){
   super.dispose();
  }

  Future<String> _loadAssignmentdata() async {
    return await rootBundle.loadString('assets/assignment.json');
  }

  Future loadAssignment() async {
    String jsonstring = await _loadAssignmentdata();
    final jsonResponse = json.decode(jsonstring);
   
    // print(assignment.firstname);
    setState(() {
      assignment = Assignment.fromJson(jsonResponse);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              // height: 435,
              // height: MediaQuery.of(context).size.height * 0.65,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixid=MnwxMjA3fDB8MHxwaG9 0by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=3988&q=80",
                    fit: BoxFit.fill,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 20, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                         '${assignment?.firstname}',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '${assignment?.lastname}',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '${assignment?.region}',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff707070)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            ',${assignment?.country}',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff707070)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 50,
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0xffFDB643)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
             Padding(
                padding: EdgeInsets.only(left: 30, right: 30, bottom: 19),
                child: Text(
                 '${assignment?.bio}',
                  style: TextStyle(fontSize: 13, color: Color(0xff707070)),
                )),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              height: 78,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      print('Posts');
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Posts',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff707070))),
                        SizedBox(
                          height: 3,
                        ),
                        Text('${assignment?.post}',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print('Followers');
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Follower',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff707070))),
                        SizedBox(
                          height: 3,
                        ),
                        Text('${assignment?.followers}',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print('Following');
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Following',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff707070))),
                        SizedBox(
                          height: 3,
                        ),
                        Text('${assignment?.following}',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
