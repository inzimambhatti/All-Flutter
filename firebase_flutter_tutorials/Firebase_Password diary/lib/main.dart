import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebaseproject_inzimam/DrawerFile.dart';
import 'package:firebaseproject_inzimam/model/board.dart';
import 'package:firebaseproject_inzimam/splash.dart';
import 'package:flutter/material.dart';
bool obsecure=true;
final FirebaseDatabase database = FirebaseDatabase.instance;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter firebase demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: splashscreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Board> boardMessages = [];
  late Board board;
  final FirebaseDatabase database = FirebaseDatabase.instance;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late DatabaseReference databaseReference;

  @override
  void initState() {
    super.initState();

    board = Board("", "");
    databaseReference = database.reference().child("diaryDetails");
    databaseReference.onChildAdded.listen(_onEntryAdded);
    databaseReference.onChildChanged.listen(_onEntryChanged);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Password Diary"),
        backgroundColor: Colors.blueAccent,

      ),
      drawer: MyDrawer(),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 0,
            child: Center(
              child: Form(
                key: formKey,
                child: Flex(
                  direction: Axis.vertical,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.lock),
                      title: TextFormField(
                       obscureText: true,
                        cursorColor: Colors.orange,
                        initialValue: "",
                        onSaved: (val) => board.subject = val!,
                        validator: (val) => val == "" ? val : null,
                      ),
                    ),

                    ListTile(
                      leading: Icon(Icons.message),
                      title: TextFormField(
                        initialValue: "",
                        onSaved: (val) => board.body = val!,
                        validator: (val) => val == "" ? val : null,
                      ),
                    ),

                    //Send or Post button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(

                          child: Text("Add Password"),
                          color: Colors.blueAccent,
                          onPressed: () {
                            AlertDialog(
                              title: Text('Welcome'), // To display the title it is optional
                              content: Text('GeeksforGeeks'), // Message which will be pop up on the screen
                              // Action widget which will provide the user to acknowledge the choice
                              actions: [
                                FlatButton(		 // FlatButton widget is used to make a text to work like a button
                                  textColor: Colors.black,
                                  onPressed: () {},	 // function used to perform after pressing the button
                                  child: Text('CANCEL'),
                                ),
                                FlatButton(
                                  textColor: Colors.black,
                                  onPressed: () {},
                                  child: Text('ACCEPT'),
                                ),
                              ],
                            );
                            handleSubmit();
                          },
                        ),
                        SizedBox(width: 20,),
                        GestureDetector(
                          child: Text("Show password"),
                          onTap: (){
                            setState(() {
                              obsecure=false;
                            });

                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            child: FirebaseAnimatedList(
              query: databaseReference,
              itemBuilder: (_, DataSnapshot snapshot,
                  Animation<double> animation, int index) {
                return GestureDetector(
                  onTap: (){
                   setState(() {

                     obsecure=true;
                   });
                  },
                  child: Card(
                    child: ListTile(

                      title:
                          TextFormField(
                  obscureText: obsecure,
                           enabled: false,
                            initialValue: boardMessages[index].subject,
                          ),
                      subtitle:
                      Text(boardMessages[index].body),


                    ),

                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void _onEntryAdded(Event event) {
    setState(() {
      boardMessages.add(Board.fromSnapshot(event.snapshot));
    });
  }

  void _onEntryChanged(Event event) {
    var oldEntry = boardMessages.singleWhere((entry) {
      return entry.key == event.snapshot.key;
    });

    setState(() {
      boardMessages[boardMessages.indexOf(oldEntry)] =
          Board.fromSnapshot(event.snapshot);
    });
  }

  void handleSubmit() {
    final FormState? form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      form.reset();
      //save form data to the database
      databaseReference.push().set(board.toJson());
    }
  }
}