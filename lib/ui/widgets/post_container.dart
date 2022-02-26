import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  final onTap;
  final String title, author, image;

  const PostContainer(
      {Key? key,
      this.onTap,
      required this.title,
      required this.author,
      required this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9.0),
      child: ListTile(
        onTap: onTap,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(9.0),
          child: Image.network(
              /*image*/ "https://www.parentsimpliques.fr/wp-content/uploads/2021/10/6C5DAC1B-E4B0-4701-A5C9-24EFAFF134D2-150x150.png"),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(height: 5),
            Text(
              author,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
