// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_app/shared/colors.dart';
import 'package:instagram_app/shared/contants.dart';

class CommentsScreen extends StatefulWidget {
  const CommentsScreen({Key? key}) : super(key: key);

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: const Text(
          'Comments',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 12),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(125, 78, 91, 110),
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://cdn1-m.zahratalkhaleej.ae/store/archive/image/2020/11/4/813126b3-4c9d-4a7b-b8d9-83f46749fa26.jpg?format=jpg&preset=w1900"),
                      radius: 26,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("USERNAME",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17)),
                          SizedBox(
                            width: 11,
                          ),
                          Text("nice pic ♥♥",
                              style: const TextStyle(fontSize: 16))
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("12/12/2012",
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ))
                    ],
                  ),
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(125, 78, 91, 110),
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://i.pinimg.com/564x/94/df/a7/94dfa775f1bad7d81aa9898323f6f359.jpg"),
                    radius: 26,
                  ),
                ),
                Expanded(
                  child: TextField(
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      decoration: decorationTextfield.copyWith(
                          hintText: "Comment as  ALI HASSAN  ",
                          suffixIcon: IconButton(
                              onPressed: () {}, icon: Icon(Icons.send)))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
