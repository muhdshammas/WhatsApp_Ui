import 'package:flutter/material.dart';
import '../whatsupdata.dart';
import 'package:dotted_border/dotted_border.dart';
import 'dart:math';
import '../components/divider.dart';

Data data = Data();

class StatusTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: DottedBorder(
              color: Colors.teal.shade300,
              borderType: BorderType.Circle,
              radius: Radius.circular(27),
              dashPattern: [
                (2 * pi * 27) /
                data.statusList.values.elementAt(index).elementAt(2),
                data.statusList.values.elementAt(index).elementAt(3),
              ],
              strokeWidth: 3,
              child: CircleAvatar(
                radius: 27,
                backgroundColor: Colors.transparent,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    '${data.statusList.values.elementAt(index).elementAt(1)}',
                  ),
                ),
              ),
            ),
            title: Text(
              '${data.statusList.values.elementAt(index).elementAt(0)}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              '${data.statusList.values.elementAt(index).elementAt(4)}',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return data.statusList.values.elementAt(index).elementAt(5)
              ? SizedBox(
                  height: 20,
                )
              : Seperator();
        },
        itemCount: data.statusList.length,
      ),
    );
  }
}