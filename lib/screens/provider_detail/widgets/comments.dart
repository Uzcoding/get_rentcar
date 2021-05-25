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
    double size = MediaQuery.of(context).size.width;
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
            Center(
              child: SizedBox(
                width: size / 1.4,
                height: 270.0,
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) => Column(
                    children: <Widget>[
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(ImagePath.user),
                            radius: 25.0,
                          ),
                          const SizedBox(width: 12.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Георгий',
                                style: const TextStyle(
                                  color: const Color(0xFF3D3D3F),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text('03.03.2021, 12:32'),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Container(
                        width: double.infinity,
                        child: Text(
                            'Очень хороший сервис, хорошие машины, буду обращаться к вам еще много раз!'),
                      ),
                      const SizedBox(height: 40.0),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0)
                  .copyWith(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.zero,
                    splashRadius: 20.0,
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
                    padding: EdgeInsets.zero,
                    splashRadius: 20.0,
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
