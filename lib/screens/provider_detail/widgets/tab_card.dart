import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_rentcar/config/config.dart';

class ProviderDetailTabCard extends StatelessWidget {
  final String icon;
  final bool isActive;
  const ProviderDetailTabCard({
    Key? key,
    required this.icon,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76.0,
      height: 72.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFFD4D8EF) : Colors.white,
        borderRadius: AppTheme.radius,
        boxShadow: AppTheme.shadow,
      ),
      child: Center(
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
