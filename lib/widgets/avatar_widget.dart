import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  AvatarWidget({Key? key, this.image, this.sum}) : super(key: key);
  String? image;
  double? sum;

  @override
  Widget build(BuildContext context) {
    if (image!.isNotEmpty) {
      return CircleAvatar(
        backgroundColor: Colors.white,
        radius: 15,
        backgroundImage: AssetImage(
          image!,
        ),
      );
    } else {
      return CircleAvatar(
        backgroundColor: Colors.black,
        radius: 15,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 14,
          child: Icon(
            (sum! > 0) ? Icons.arrow_back : Icons.arrow_forward,
            color: Colors.black,
            size: 25.0,
          ),
        ),
      );
    }
  }
}
