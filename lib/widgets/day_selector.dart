import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class DaySelector extends StatelessWidget {
  final List<String> days = const ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat'];
  final String activeDay;
  final ValueChanged<String> onDaySelected;

  const DaySelector({
    super.key,
    required this.activeDay,
    required this.onDaySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: AppTheme.screenPadding),
      child: Row(
        children: days.map((day) {
          final isActive = day == activeDay;
          return Padding(
            padding: const EdgeInsets.only(right: AppTheme.spacingSmall),
            child: GestureDetector(
              onTap: () => onDaySelected(day),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeOut,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppTheme.spacingDefault,
                  vertical: AppTheme.spacingCompact,
                ),
                decoration: BoxDecoration(
                  gradient: isActive ? AppTheme.convexGradient : null,
                  color: isActive ? null : Colors.transparent,
                  borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
                  boxShadow: isActive ? AppTheme.softShadow : [],
                ),
                child: Text(
                  day,
                  style: TextStyle(
                    fontFamily: AppTheme.fontFamily,
                    fontSize: 14,
                    fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
                    color: isActive ? AppTheme.brandPrimary : AppTheme.textSecondary,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
