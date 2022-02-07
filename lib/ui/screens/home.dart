import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pi_blog_app/global.dart';
import 'package:pi_blog_app/models/post.dart';
import 'package:pi_blog_app/ui/screens/post.dart';
import 'package:pi_blog_app/ui/widgets/widgets.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

List<Post> parsePosts(response) {
  final parsed = jsonDecode(response).cast<Map<String, dynamic>>();
  return parsed.map<Post>((json) => Post.fromJson(json)).toList();
}

Future<List<Post>> _getPosts() async {
  final response = await http.get(Uri.https(baseUrl, '/wp-json/wp/v2/posts'));
  return compute(parsePosts, response.body);
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Post>> _postsFuture;
  @override
  void initState() {
    super.initState();
    _postsFuture = _getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder<List<Post>>(
        future: _postsFuture,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Scaffold(
              body: Center(
                child: Text("Error"),
              ),
            );
          }
          if (snapshot.hasData) {
            return Scaffold(
              appBar: AppBar(
                elevation: 0,
                title: Text(
                  "Parents Impliqués",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black),
                ),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(9),
                      child: Image.network(
                        "${snapshot.data?[0].lLinks?.wpFeaturedmedia?.first.href}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              body: ListView(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * .35,
                    margin: const EdgeInsets.symmetric(vertical: 15.0),
                    child: PageView.builder(
                      controller: PageController(viewportFraction: .76),
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, i) => OverlayedContainer(
                        authorAvatar:
                            // "${snapshot.data?[i].author!.avatarUrls?.s24}",
                            "Test",
                        // author: "${snapshot.data?[i].author?.firstName}",
                        author: "Dan",
                        image:
                            "${snapshot.data?[i].lLinks?.wpAttachment?.first.href}",
                        title: "${snapshot.data?[i].title?.rendered}",
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PostScreen(postData: snapshot.data![i]),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Tous les articles",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, i) => PostContainer(
                            author: "Dan",
                            // author: "${snapshot.data?[i].author?.firstName}",
                            image: snapshot.data?[i].lLinks?.wpFeaturedmedia
                                    ?.first.href ??
                                "",
                            title: "${snapshot.data?[i].title?.rendered}",
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    PostScreen(postData: snapshot.data![i]),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          } else {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}
