import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class ClayButton extends StatefulWidget {
  final String text;
  final VoidCallback onTap;

  const ClayButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  State<ClayButton> createState() => _ClayButtonState();
}

class _ClayButtonState extends State<ClayButton> with SingleTickerProviderStateMixin {
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
              height: 52,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: _isPressed ? AppTheme.concaveGradient : AppTheme.convexGradient,
                borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
                boxShadow: _isPressed ? AppTheme.pressedShadow : AppTheme.softShadow,
              ),
              child: Text(
                widget.text,
                style: AppTheme.label,
              ),
            ),
          );
        },
      ),
    );
  }
}
