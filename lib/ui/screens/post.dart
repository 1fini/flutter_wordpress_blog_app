import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:pi_blog_app/models/post.dart';

class PostScreen extends StatelessWidget {
  final Post postData;

  const PostScreen({Key? key, required this.postData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, _) => Stack(
            children: <Widget>[
              Positioned.fill(
                bottom: MediaQuery.of(context).size.height * .55,
                child: Image.network(
                  "https://www.parentsimpliques.fr/wp-content/uploads/2021/10/6C5DAC1B-E4B0-4701-A5C9-24EFAFF134D2.png",
                  // postData.lLinks?.wpAttachment?.first.href ?? "",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Positioned.fill(
                child: DraggableScrollableSheet(
                  initialChildSize: .65,
                  minChildSize: .65,
                  builder: (context, controller) => Container(
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                      ),
                    ),
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        ListTile(
                          leading: Image.network(
                            "https://www.parentsimpliques.fr/wp-content/uploads/2021/10/6C5DAC1B-E4B0-4701-A5C9-24EFAFF134D2.png",
                            height: 35,
                            width: 35,
                            fit: BoxFit.cover,
                          ),
                          title: Text(
                            postData.author?.firstName ?? "",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        const SizedBox(height: 9),
                        Html(
                          data: postData.content?.rendered ?? "",
                          // onLinkTap: (url) async {
                          //   if (await canLaunch(url!)) {
                          //     await launch(url!);
                          //   } else {
                          //     throw 'Could not launch $url';
                          //   }
                          // },
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
