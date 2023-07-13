import 'package:flutter/material.dart';
import 'package:investapp/constants/colors.dart';

class ProfileTile extends StatelessWidget {
  final Icon? leadIcon;
  final String title;
  final VoidCallback callback;
  final String imagepath;

  ProfileTile(
      {this.imagepath = "",
      this.leadIcon,
      required this.title,
      required this.callback});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Card(
        child: ListTile(
            tileColor: Txtwhite,
            leading: imagepath.isNotEmpty
                ? Image(width: 24, height: 24, image: AssetImage(imagepath))
                : leadIcon,
            title: Text(title),
            trailing: const Icon(Icons.arrow_forward_ios_rounded)),
      ),
    );
  }
}
