import 'package:flutter/material.dart';
import 'package:live_class/screens/meeting/meeting.dart';
import 'package:live_class/styles/globalstyle.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalStyle css = new GlobalStyle();

  var serverUrl = "https://meet.jit.si";

  var meetingTitle = [
    'Math Class',
    'Physics',
    'Biology',
    'Computer SCience',
    'Geology',
    'History',
    'GK/GS'
  ];
  var meetingCode = [
    'mathclass',
    'physics',
    'biology',
    'computerscience',
    'geology',
    'history',
    'gkgs'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        backgroundColor: css.navColor,
        title: Text('Fly Learn'),
        actions: [
          IconButton(
            icon: Icon(Icons.video_call),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Meeting(
                            meetingCode: meetingCode[2],
                            meetingTitle: meetingTitle[2],
                            clientName: 'Fly Learn',
                            clientEmail: 'flylearn@gmail.com',
                            serverUrl: serverUrl,
                          )));
            },
            tooltip: 'Host Meeting',
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
            tooltip: 'Join Meeting',
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text(meetingTitle[index]),
              trailing: IconButton(
                icon: Icon(
                  Icons.video_call,
                  color: css.navColor,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Meeting(
                                meetingCode: meetingCode[index],
                                meetingTitle: meetingTitle[index],
                                clientName: 'Saurabh Ranjan',
                                clientEmail: 'srkit28@gmail.com',
                                serverUrl: serverUrl,
                              )));

                  // var url = serverUrl + "/" + meetingCode[index];
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => WebviewPage(url: url)));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
