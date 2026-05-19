import 'package:flutter/material.dart';
import '../widgets/story_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        title: Row(
          children: const [

            Text(
              "Instagram",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),

            Spacer(),

            Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),

            SizedBox(width: 16),

            Icon(
              Icons.chat_bubble_outline,
              color: Colors.black,
            ),
          ],
        ),
      ),

      body: Column(
        children: [

          // STORIES
          Container(
            height: 100,

            child: ListView(
              scrollDirection: Axis.horizontal,

              children: const [

                StoryItem(username: "Your Story"),
                StoryItem(username: "user1"),
                StoryItem(username: "user2"),
                StoryItem(username: "user3"),
                StoryItem(username: "user4"),
              ],
            ),
          ),

          // POST HEADER
          Container(
            padding: const EdgeInsets.all(12),

            child: Row(
              children: [

                const CircleAvatar(
                  child: Text("U"),
                ),

                const SizedBox(width: 10),

                const Text(
                  "username",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Spacer(),

                const Icon(Icons.more_vert),
              ],
            ),
          ),

          // POST IMAGE
          Image.network(
            "https://picsum.photos/500/300",
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          // ACTION BUTTONS
          Container(
            padding: const EdgeInsets.all(12),

            child: Row(
              children: const [

                Icon(Icons.favorite_border),

                SizedBox(width: 16),

                Icon(Icons.chat_bubble_outline),

                SizedBox(width: 16),

                Icon(Icons.send),

                Spacer(),

                Icon(Icons.bookmark_border),
              ],
            ),
          ),

          // POST INFO
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),

            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                const Text(
                  "120 likes",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Row(
                  children: const [

                    Text(
                      "username ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text("caption post..."),
                  ],
                ),

                const SizedBox(height: 6),

                const Text(
                  "View all 12 comments",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 6),

                const Text(
                  "2 hours ago",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: "",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "",
          ),

          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 12,
              child: Text("N"),
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}