import 'package:flutter/material.dart';
import 'package:hw_10/pages/NewBlog.dart';
import 'package:hw_10/pages/blog.dart';
import 'package:hw_10/pages/details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    String text;
    Widget body;
    if (currentIndex == 0) {
      body = const HomePage();
      text = 'My Blogs';
    } else {
      body = const NewBlog();
      text = 'Add Blog';
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: const TextStyle(color: Colors.blueAccent, fontSize: 30),
            )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blueAccent,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'New Blog',
          ),
        ],
        currentIndex: currentIndex,
      ),
      body: body,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [for (var Blog in blogs) (myBlogs(blog: Blog))],
    );
  }
}

class myBlogs extends StatelessWidget {
  final Blog blog;
  const myBlogs({super.key, required this.blog});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Details(
                      blog: blog,
                    )),
          );
        },
        child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Color(0xFFeeeeee),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      blog.img,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    blog.title,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black45,
                    ),
                    maxLines: 2,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
