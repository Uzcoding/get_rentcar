import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/screens/cars/widgets/widgets.dart';
import 'package:get_rentcar/widgets/widgets.dart';

class AllCarCard extends StatelessWidget {
  const AllCarCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            offset: Offset(0, 3),
            blurRadius: 6.0,
          )
        ],
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            ImagePath.car,
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        'Toyota Camri Y8',
                        style: TextStyles.cardTitle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    Image.asset(
                      ImagePath.dreamCar,
                      width: 20.0,
                    ),
                  ],
                ),
                generateStars(4),
                SizedBox(
                  width: 120.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      carInsideInfo(
                        count: 5,
                        icon: IconsPath.armchair,
                        iconSize: 18.0,
                      ),
                      carInsideInfo(
                        count: 5,
                        icon: IconsPath.door,
                        iconSize: 18.0,
                      ),
                      carInsideInfo(
                        icon: IconsPath.conditsioner,
                        iconSize: 18.0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                buildCharacteristic(
                  info: 'Стаж вождения от:',
                  value: ' 3 лет',
                ),
                buildCharacteristic(
                  info: 'Лимит пробега:',
                  value: '200 км',
                ),
                buildCharacteristic(
                  info: 'Возраст от:',
                  value: '21 года',
                ),
                const SizedBox(height: 12.0),
                Text(
                  'Цена за день: 450 000',
                  style: const TextStyle(
                    color: ColorPalette.mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
