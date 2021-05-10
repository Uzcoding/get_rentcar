import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class Comments extends StatefulWidget {
  const Comments({
    Key? key,
  }) : super(key: key);

  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  final PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.comments,
          style: const TextStyle(
            color: ColorPalette.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30.0),
        Stack(
          children: [
            SizedBox(
              height: 270.0,
              child: PageView.builder(
                controller: pageController,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40.0,
                      ),
                      const SizedBox(height: 15.0),
                      Text(
                        'Георгий',
                        style: const TextStyle(
                          color: const Color(0xFF3D3D3F),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        width: double.infinity,
                        height: 77.0,
                        decoration: BoxDecoration(
                          borderRadius: AppTheme.radius,
                          boxShadow: AppTheme.shadow,
                          color: Colors.white,
                        ),
                        child: Text('Lorem ipsum'),
                      ),
                      const SizedBox(height: 40.0),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 30.0,
                      color: const Color(0xFFD4D4D4),
                    ),
                    onPressed: () => pageController.previousPage(
                      duration: Duration(milliseconds: 250),
                      curve: Curves.linear,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 30.0,
                      color: const Color(0xFFD4D4D4),
                    ),
                    onPressed: () => pageController.nextPage(
                      duration: Duration(milliseconds: 250),
                      curve: Curves.linear,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
