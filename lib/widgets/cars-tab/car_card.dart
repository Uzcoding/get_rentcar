import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class HomeCarCard extends StatelessWidget {
  const HomeCarCard({required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: index == 0
          ? EdgeInsets.all(10.0).copyWith(left: 0)
          : EdgeInsets.all(10.0),
      width: 200.0,
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
          Padding(
            padding: const EdgeInsets.fromLTRB(
              15.0,
              25.0,
              15.0,
              30.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 80.0,
                      child: Text(
                        'Toyota',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF070B16),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      width: 80.0,
                      child: Text(
                        'Camri Y8',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF070B16),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '450 000 сум',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xFF616161),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '/ день',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Color(0xFF616161),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Image(
              width: 150.0,
              height: 70.0,
              image: AssetImage(ImagePath.car),
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
