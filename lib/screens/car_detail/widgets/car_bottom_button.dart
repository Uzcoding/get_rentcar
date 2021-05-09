import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/widgets/widgets.dart';

class CarBottomButton extends StatelessWidget {
  const CarBottomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: 30.0).copyWith(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            child: Text(
              'Итого : 300 000 сум',
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF3C3C3C),
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          FilledButton(
            title: AppStrings.next,
            size: 130.0,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
