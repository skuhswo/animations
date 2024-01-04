import 'package:animations/model/animation_item.dart';
import 'package:animations/page/bones_page.dart';
import 'package:animations/page/custom_rive_animation_page.dart';
import 'package:animations/page/animated_container_page.dart';
import 'package:animations/page/animated_builder_page.dart';
import 'package:animations/page/color_tween_page.dart';
import 'package:animations/page/lottie_page.dart';
import 'package:animations/page/rotation_transition_page.dart';
import 'package:animations/page/animated_cross_fade_page.dart';
import 'package:animations/page/tween_animation_builder_page.dart';
import 'package:animations/page/animated_icon_page.dart';
import 'package:animations/page/multiple_transitions_page.dart';

class AnimationsProvider {
  Map<String, AnimationItem> _items = new Map();

  AnimationsProvider() {
    _items = {
      "0": AnimationItem(
          "Animated Container", "", AnimatedContainerPage()),
      "1": AnimationItem("AnimatedCrossFade", "Implicitly animated build-in widget", AnimatedCrossFadePage()),
      "2": AnimationItem(
          "TweenAnimationBuilder 1", "Color", ColorTweenPage()),
      "3": AnimationItem("TweenAnimationBuilder 2", "Size", TweenAnimationBuilderPage()),
      "4": AnimationItem("Rotation Transition", "Explicitly animated build-in widget", RotationTransitionPage()),
      "5": AnimationItem("AnimatedIcon", "", AnimatedIconPage()),
      "6": AnimationItem("Animated Builder", "AnimatedBuilder", AnimatedBuilderPage()),
      "7": AnimationItem("Custom Rive Animation", "Animation Framework (Rive)", CustomRiveAnimationPage()),
      "8": AnimationItem("Bones", "Animation Framework (Rive)", BonesPage()),
      "9": AnimationItem("Multiple Transitions", "", MultipleTransitionsPage()),
      "10": AnimationItem("Lottie Animation Page", "", LottiePage()),


    };
  }

  Map<String, AnimationItem> get items => _items;
}
