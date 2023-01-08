import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:application/components/calltile.dart';
import 'package:application/components/divider.dart';
import 'statusscreen.dart';
import 'chatscreen.dart';
import '../whatsupdata.dart';

Data callList = Data();

class CallScreen extends StatelessWidget {
  static const String id = 'callscreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff075e54),
        title: Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              CupertinoIcons.ellipsis_vertical,
              size: 26,
            ),
            onPressed: () {},
          ),
        ],
        bottom: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff075e54),
          leading: Container(
            child: Icon(
              Icons.camera_alt_rounded,
              color: Colors.white.withOpacity(0.5),
              size: 28,
            ),
          ),
          actions: [
            Container(
              width: 115,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.transparent,
                    width: 5,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(
                      8,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, ChatScreen.id);
                      },
                      child: Text(
                        'CHATS',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 115,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.transparent,
                    width: 5,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(
                      8,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, StatusScreen.id);
                      },
                      child: Text(
                        'STATUS',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 115,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 5,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(
                      8,
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'CALLS',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Color(0xff25d366),
            onPressed: () {},
            child: Icon(
              Icons.add_call,
              color: Colors.white,
              size: 28,
            ),
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => CallTile(
          name: callList.calls.values.elementAt(index).elementAt(0),
          img: callList.calls.values.elementAt(index).elementAt(1),
          vid: callList.calls.values.elementAt(index).elementAt(2),
          isMissed: callList.calls.values.elementAt(index).elementAt(3),
          inComing: callList.calls.values.elementAt(index).elementAt(4),
          time: callList.calls.values.elementAt(index).elementAt(5),
        ),
        separatorBuilder: (context, index) =>
        //     callList.calls.values.elementAt(index).elementAt(6)
                SizedBox(
                    height: 10,
                ),
                 //Seperator(),
      itemCount: callList.calls.length,
      ),
    );
  }
}