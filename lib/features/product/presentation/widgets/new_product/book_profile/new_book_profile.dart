import 'package:flutter/material.dart';

class NewBookProfile extends StatelessWidget {
  const NewBookProfile({
    Key? key,
    required this.nextPage,
    required this.prevPage,
  }) : super(key: key);
  final Function() nextPage, prevPage;

  @override
  Widget build(BuildContext context) => Center(
        child: Text('new book profile form - Todo'),
      );
}
