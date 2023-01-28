import 'package:flutter/material.dart';
import 'package:hw_10/pages/blog.dart';

class NewBlog extends StatefulWidget {
  const NewBlog({super.key});

  @override
  State<NewBlog> createState() => _NewBlogState();
}

class _NewBlogState extends State<NewBlog> {
  final titleController = TextEditingController();
  final descController = TextEditingController();
  final imgController = TextEditingController();
  late String title;
  late String desc;
  String mypic =
      'https://images.unsplash.com/photo-1438401171849-74ac270044ee?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2235&q=80';
  bool validateT = false;
  bool validateD = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Blog Title ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                errorText: validateT ? 'Title can\'t be empty' : null,
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              controller: titleController,
              onChanged: (value) {
                title = titleController.text.toString();
                setState(() {});
              },
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Description',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                errorText: validateD ? 'Description can\'t be empty' : null,
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey,
                  ),
                ),
              ),
              controller: descController,
              onChanged: (value) {
                desc = descController.text.toString();
                setState(() {});
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Choose the image:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                height: 350,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        mypic =
                            'https://images.unsplash.com/photo-1535581652167-3a26c90bbf86?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80';
                        setState(() {});
                      },
                      child: Image.network(
                        'https://images.unsplash.com/photo-1535581652167-3a26c90bbf86?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                        fit: BoxFit.cover,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        mypic =
                            'https://images.unsplash.com/photo-1531335773500-23410807365a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80';
                        setState(() {});
                      },
                      child: Image.network(
                        'https://images.unsplash.com/photo-1531335773500-23410807365a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80',
                        fit: BoxFit.cover,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        mypic =
                            'https://images.unsplash.com/photo-1438401171849-74ac270044ee?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2235&q=80';
                        setState(() {});
                      },
                      child: Image.network(
                        'https://images.unsplash.com/photo-1438401171849-74ac270044ee?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2235&q=80',
                        fit: BoxFit.cover,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        mypic =
                            'https://images.unsplash.com/photo-1542223616-740d5dff7f56?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2054&q=80';
                        setState(() {});
                      },
                      child: Image.network(
                        'https://images.unsplash.com/photo-1542223616-740d5dff7f56?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2054&q=80',
                        fit: BoxFit.cover,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        mypic =
                            'https://images.unsplash.com/photo-1484447089447-a742155835e2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80';
                        setState(() {});
                      },
                      child: Image.network(
                        'https://images.unsplash.com/photo-1484447089447-a742155835e2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                        fit: BoxFit.cover,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        mypic =
                            'https://images.unsplash.com/photo-1556305078-869cc33a1b51?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2593&q=80';
                        setState(() {});
                      },
                      child: Image.network(
                        'https://images.unsplash.com/photo-1556305078-869cc33a1b51?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2593&q=80',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                )),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      titleController.text.isEmpty
                          ? validateT = true
                          : validateT = false;
                      descController.text.isEmpty
                          ? validateD = true
                          : validateD = false;
                    });
                    if (titleController.text.isNotEmpty &&
                        descController.text.isNotEmpty) {
                      blogs.add(Blog(mypic, title, desc));
                    }
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(8),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blueAccent),
                  ),
                  child: const Text(
                    'Add Blog',
                    style: TextStyle(fontSize: 20),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
