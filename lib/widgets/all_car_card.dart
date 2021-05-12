import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/screens/cars/widgets/widgets.dart';

class AllCarCard extends StatelessWidget {
  const AllCarCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, Routes.carDetail),
      child: Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: AppTheme.radius,
          boxShadow: AppTheme.shadow,
          color: Colors.white,
        ),
        child: Row(
          children: <Widget>[
            Column(
              children: [
                Image.asset(
                  ImagePath.car,
                ),
                const SizedBox(height: 10.0),
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
              ],
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          'Toyota Camri Y8',
                          style: TextStyles.cardTitle,
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      Image.asset(
                        ImagePath.dreamCar,
                        width: 20.0,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      style: const TextStyle(
                        color: ColorPalette.mainColor,
                        fontSize: 14.0,
                      ),
                      children: [
                        TextSpan(text: '450 000 сум'),
                        TextSpan(
                            text: ' / 1 день',
                            style: const TextStyle(
                              color: ColorPalette.black,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
