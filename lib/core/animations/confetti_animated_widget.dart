import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class ConfettiAnimatedWidgetController {
  final List<ConfettiController> controllers;

  ConfettiAnimatedWidgetController(this.controllers);

  void play() {
    for (ConfettiController controller in controllers) {
      controller.play();
    }
  }
}

class ConfettiAnimatedWidget extends StatelessWidget {
  ConfettiAnimatedWidget({
    super.key,
    required this.builder,
  });

  final Widget Function(ConfettiAnimatedWidgetController) builder;

  final ConfettiController controllerCenterRight =
      ConfettiController(duration: const Duration(seconds: 2));

  final ConfettiController controllerCenterLeft =
      ConfettiController(duration: const Duration(seconds: 2));

  @override
  Widget build(BuildContext context) {
    late final ConfettiAnimatedWidgetController controller =
        ConfettiAnimatedWidgetController(
            [controllerCenterRight, controllerCenterLeft]);
    return Stack(
      children: [
        builder(controller),
        Align(
          alignment: Alignment.centerLeft,
          child: ConfettiWidget(
            confettiController: controllerCenterLeft,
            blastDirection: 0,
            // radial value - RIGHT
            emissionFrequency: 0.6,
            minimumSize: const Size(10, 10),
            // set the minimum potential size for the confetti (width, height)
            maximumSize: const Size(50, 50),
            // set the maximum potential size for the confetti (width, height)
            numberOfParticles: 1,
            gravity: 0.1,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: ConfettiWidget(
            confettiController: controllerCenterRight,
            blastDirection: pi,
            // radial value - LEFT
            particleDrag: 0.05,
            // apply drag to the confetti
            emissionFrequency: 0.05,
            // how often it should emit
            numberOfParticles: 20,
            // number of particles to emit
            gravity: 0.05,
            // gravity - or fall speed
            shouldLoop: false,
            colors: const [Colors.green, Colors.blue, Colors.pink],
            // manually specify the colors to be used
            strokeWidth: 1,
            strokeColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
