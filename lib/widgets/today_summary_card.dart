import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class TodaySummaryCard extends StatelessWidget {
  final int classCount;
  final String dateString;

  const TodaySummaryCard({
    super.key,
    required this.classCount,
    required this.dateString,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppTheme.spacingLarge),
      decoration: BoxDecoration(
        gradient: AppTheme.convexGradient,
        borderRadius: BorderRadius.circular(AppTheme.radiusCard),
        boxShadow: AppTheme.softShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hari ini',
            style: AppTheme.caption,
          ),
          const SizedBox(height: AppTheme.spacingCompact),
          Text(
            '$classCount Kelas',
            style: AppTheme.h1.copyWith(color: AppTheme.brandPrimary),
          ),
          const SizedBox(height: AppTheme.spacingMicro),
          Text(
            dateString,
            style: AppTheme.body,
          ),
        ],
      ),
    );
  }
}
