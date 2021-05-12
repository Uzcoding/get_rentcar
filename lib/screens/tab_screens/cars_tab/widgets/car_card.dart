import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_rentcar/config/config.dart';

class HomeCarCard extends StatelessWidget {
  const HomeCarCard({required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, Routes.carDetail),
      child: Container(
        margin: index == 0
            ? EdgeInsets.all(10.0).copyWith(left: 0)
            : EdgeInsets.all(10.0),
        width: 200.0,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              offset: Offset(2, 2),
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                'Toyota Camri Y8',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF070B16),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              '450 000 сум / день',
              style: TextStyle(
                fontSize: 13.0,
                color: Color(0xFF616161),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Center(
                child: Image(
                  width: 150.0,
                  height: 70.0,
                  image: AssetImage(ImagePath.car),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                SvgPicture.asset(IconsPath.hertz),
                const SizedBox(width: 15.0),
                Text(
                  'Hertz',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
