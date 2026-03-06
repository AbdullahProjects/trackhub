import 'package:flutter/material.dart';
import 'package:trackhub/utils/constants/app_colors.dart';

class BoxShadowStyles {
  BoxShadowStyles._();

  static BoxShadow get sm => BoxShadow(
        color: AppColors.textDark.withValues(alpha: 0.08),
        blurRadius: 4,
        offset: const Offset(0, 2),
      );

  static BoxShadow get md => BoxShadow(
        color: AppColors.textDark.withValues(alpha: 0.12),
        blurRadius: 8,
        offset: const Offset(0, 4),
      );

  static BoxShadow get lg => BoxShadow(
        color: AppColors.textDark.withValues(alpha: 0.16),
        blurRadius: 16,
        offset: const Offset(0, 8),
      );
}
