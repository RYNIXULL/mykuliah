import 'package:flutter/material.dart';
import '../models/mata_kuliah.dart';
import '../theme/app_theme.dart';
import '../widgets/clay_button.dart';

class DetailScreen extends StatelessWidget {
  final MataKuliah mataKuliah;

  const DetailScreen({super.key, required this.mataKuliah});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundPrimary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppTheme.screenPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClayButton(
                text: 'Kembali',
                onTap: () => Navigator.pop(context),
              ),
              const SizedBox(height: AppTheme.spacingSection),
              Container(
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
                    Text(
                      mataKuliah.nama,
                      style: AppTheme.h1,
                    ),
                    const SizedBox(height: AppTheme.spacingCompact),
                    Text(
                      mataKuliah.hari,
                      style: AppTheme.label.copyWith(color: AppTheme.brandPrimary),
                    ),
                    const SizedBox(height: AppTheme.spacingMicro),
                    Text(
                      '${mataKuliah.jamMulai} — ${mataKuliah.jamSelesai}',
                      style: AppTheme.caption,
                    ),
                    const SizedBox(height: AppTheme.spacingLarge),
                    
                    const Text(
                      'Ruangan',
                      style: AppTheme.caption,
                    ),
                    const SizedBox(height: AppTheme.spacingMicro),
                    Text(
                      mataKuliah.ruangan,
                      style: AppTheme.body,
                    ),
                    
                    const SizedBox(height: AppTheme.spacingLarge),
                    
                    const Text(
                      'Dosen',
                      style: AppTheme.caption,
                    ),
                    const SizedBox(height: AppTheme.spacingMicro),
                    Text(
                      mataKuliah.dosen,
                      style: AppTheme.body,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
