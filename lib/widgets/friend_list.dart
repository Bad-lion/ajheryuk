import 'package:ajheryuk/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

class FriendListWidegt extends StatelessWidget {
  const FriendListWidegt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 8,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(right: 24.0),
        child: Stack(children: [
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(width: 5, color: AppColor.backgroundRed),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(width: 3, color: Colors.white),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18.0),
                child: Image.network(
                    'http://t3.gstatic.com/licensed-image?q=tbn:ANd9GcSVVyE9C3wjVRHtaS9IHCiCJpqSEraahwjlDyt-KgxSh5xEdsVQXUUE7B8vpRQ-',
                    fit: BoxFit.cover,
                    width: 70,
                    height: 70),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 50,
            child: SvgPicture.asset('assets/icons/live_circle.svg'),
          )
        ]),
      ),
    );
  }
}
