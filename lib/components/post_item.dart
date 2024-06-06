import 'package:flutter/material.dart';

class PostItem extends StatefulWidget {
  const PostItem({super.key});

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/temp/user2.png",
                width: 50,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Jamie Anderson",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset('assets/temp/post1.jpg'),
          Column(
            children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "@JamieAnderson",
                  )),
              Text(
                "Step out of your comfort zone and take a leap of faith – you never know what you might achieve!✨💯✨💯",
                softWrap: true,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
