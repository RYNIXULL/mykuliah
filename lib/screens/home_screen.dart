import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../data/jadwal_data.dart';
import '../models/mata_kuliah.dart';
import '../theme/app_theme.dart';
import '../widgets/day_selector.dart';
import '../widgets/schedule_card.dart';
import '../widgets/today_summary_card.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String activeDay;
  late String currentDateString;
  late String greeting;
  
  final List<String> _daysMapping = [
    'Senin',
    'Selasa',
    'Rabu',
    'Kamis',
    'Jumat',
    'Sabtu',
    'Minggu'
  ];

  @override
  void initState() {
    super.initState();
    _initDate();
  }

  void _initDate() {
    final now = DateTime.now();
    
    int weekdayIndex = now.weekday - 1;
    if (weekdayIndex >= 0 && weekdayIndex < 5) {
      activeDay = _daysMapping[weekdayIndex];
    } else {
      activeDay = 'Senin';
    }

    currentDateString = DateFormat('EEEE, d MMMM', 'id_ID').format(now);
    
    int hour = now.hour;
    if (hour < 12) {
      greeting = 'Selamat pagi,';
    } else if (hour < 15) {
      greeting = 'Selamat siang,';
    } else if (hour < 18) {
      greeting = 'Selamat sore,';
    } else {
      greeting = 'Selamat malam,';
    }
  }

  bool _checkIsNow(MataKuliah mk) {
    final now = DateTime.now();
    int weekdayIndex = now.weekday - 1;
    if (weekdayIndex < 0 || weekdayIndex > 6) return false;
    if (activeDay != _daysMapping[weekdayIndex]) return false;
    
    final currentMinutes = now.hour * 60 + now.minute;
    
    final startParts = mk.jamMulai.split(':');
    final startMinutes = int.parse(startParts[0]) * 60 + int.parse(startParts[1]);
    
    final endParts = mk.jamSelesai.split(':');
    final endMinutes = int.parse(endParts[0]) * 60 + int.parse(endParts[1]);
    
    return currentMinutes >= startMinutes && currentMinutes < endMinutes;
  }

  void _onDaySelected(String day) {
    setState(() {
      activeDay = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<MataKuliah> dailySchedule = dummyJadwal.where((mk) => mk.hari == activeDay).toList();
    dailySchedule.sort((a, b) => a.jamMulai.compareTo(b.jamMulai));

    return Scaffold(
      backgroundColor: AppTheme.backgroundPrimary,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(AppTheme.screenPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    greeting,
                    style: AppTheme.caption,
                  ),
                  const SizedBox(height: AppTheme.spacingMicro),
                  const Text(
                    'Mahasiswa',
                    style: AppTheme.h1,
                  ),
                  const SizedBox(height: AppTheme.spacingSmall),
                  Text(
                    currentDateString,
                    style: AppTheme.caption,
                  ),
                  const SizedBox(height: AppTheme.spacingSection),
                  TodaySummaryCard(
                    classCount: dailySchedule.length,
                    dateString: currentDateString,
                  ),
                ],
              ),
            ),
            
            // Day Selector
            DaySelector(
              activeDay: activeDay,
              onDaySelected: _onDaySelected,
            ),
            
            const SizedBox(height: AppTheme.spacingLarge),
            
            // Schedule Section Header
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppTheme.screenPadding),
              child: Text(
                'Jadwal Kuliah',
                style: AppTheme.h2,
              ),
            ),
            const SizedBox(height: AppTheme.spacingDefault),
            
            // Schedule Cards or Empty State
            Expanded(
              child: dailySchedule.isEmpty
                  ? _buildEmptyState()
                  : ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: AppTheme.screenPadding),
                      itemCount: dailySchedule.length,
                      itemBuilder: (context, index) {
                        final mk = dailySchedule[index];
                        return ScheduleCard(
                          mataKuliah: mk,
                          isNow: _checkIsNow(mk),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  mataKuliah: mk,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(AppTheme.screenPadding),
        padding: const EdgeInsets.all(AppTheme.spacingLarge),
        decoration: BoxDecoration(
          gradient: AppTheme.convexGradient,
          borderRadius: BorderRadius.circular(AppTheme.radiusCard),
          boxShadow: AppTheme.softShadow,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.weekend_rounded,
              size: 48,
              color: AppTheme.brandPrimary,
            ),
            const SizedBox(height: AppTheme.spacingDefault),
            const Text(
              'Tidak ada jadwal',
              style: AppTheme.h2,
            ),
            const SizedBox(height: AppTheme.spacingSmall),
            const Text(
              'Waktunya bersantai dan menikmati hari.',
              style: AppTheme.body,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
