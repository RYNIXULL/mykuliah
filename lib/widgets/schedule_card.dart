import 'package:flutter/material.dart';
import '../models/mata_kuliah.dart';
import '../theme/app_theme.dart';

class ScheduleCard extends StatefulWidget {
  final MataKuliah mataKuliah;
  final bool isNow;
  final VoidCallback onTap;

  const ScheduleCard({
    super.key,
    required this.mataKuliah,
    this.isNow = false,
    required this.onTap,
  });

  @override
  State<ScheduleCard> createState() => _ScheduleCardState();
}

class _ScheduleCardState extends State<ScheduleCard> with SingleTickerProviderStateMixin {
  bool _isPressed = false;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.98).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onPointerDown(PointerDownEvent event) {
    setState(() => _isPressed = true);
    _controller.forward();
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() => _isPressed = false);
    _controller.reverse();
    widget.onTap();
  }

  void _onPointerCancel(PointerCancelEvent event) {
    setState(() => _isPressed = false);
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: _onPointerDown,
      onPointerUp: _onPointerUp,
      onPointerCancel: _onPointerCancel,
      child: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: Container(
              margin: const EdgeInsets.only(bottom: AppTheme.spacingDefault),
              padding: const EdgeInsets.all(AppTheme.spacingLarge),
              decoration: BoxDecoration(
                gradient: _isPressed ? AppTheme.concaveGradient : AppTheme.convexGradient,
                borderRadius: BorderRadius.circular(AppTheme.radiusCard),
                boxShadow: _isPressed ? AppTheme.pressedShadow : AppTheme.softShadow,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${widget.mataKuliah.jamMulai} — ${widget.mataKuliah.jamSelesai}',
                        style: AppTheme.caption,
                      ),
                      if (widget.isNow)
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            color: AppTheme.statusActive,
                            borderRadius: BorderRadius.circular(AppTheme.radiusPill),
                          ),
                          child: const Text(
                            'Sekarang',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.statusActiveText,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: AppTheme.spacingCompact),
                  Text(
                    widget.mataKuliah.nama,
                    style: AppTheme.h2,
                  ),
                  const SizedBox(height: AppTheme.spacingSmall),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_rounded,
                        size: 16,
                        color: AppTheme.brandPrimary,
                      ),
                      const SizedBox(width: AppTheme.spacingMicro),
                      Expanded(
                        child: Text(
                          widget.mataKuliah.ruangan,
                          style: AppTheme.body,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppTheme.spacingMicro),
                  Row(
                    children: [
                      const Icon(
                        Icons.person_rounded,
                        size: 16,
                        color: AppTheme.brandPrimary,
                      ),
                      const SizedBox(width: AppTheme.spacingMicro),
                      Expanded(
                        child: Text(
                          widget.mataKuliah.dosen,
                          style: AppTheme.body,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
