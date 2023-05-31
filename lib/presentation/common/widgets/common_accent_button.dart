import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../constants/palette.dart';

class CommonAccentButton extends StatelessWidget {
  const CommonAccentButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.isExpanded = false,
      this.isDisabled = false,
      this.isPending = false})
      : isRed = false;

  const CommonAccentButton.red(
      {super.key,
      this.onPressed,
      required this.text,
      this.isExpanded = false,
      this.isDisabled = false,
      this.isPending = false})
      : isRed = true;

  final Function()? onPressed;
  final String text;
  final bool isRed;
  final bool isDisabled;
  final bool isExpanded;
  final bool isPending;

  @override
  Widget build(BuildContext context) {
    if (isExpanded == false) {
      return FittedBox(
        child: _ButtonContent(
          onPressed: onPressed,
          text: text,
          isRed: isRed,
          isDisabled: isDisabled,
          isPending: isPending,
        ),
      );
    } else {
      return _ButtonContent(
        onPressed: onPressed,
        text: text,
        isRed: isRed,
        isDisabled: isDisabled,
        isPending: isPending,
      );
    }
  }
}

class _ButtonContent extends StatefulWidget {
  const _ButtonContent({
    Key? key,
    this.onPressed,
    required this.text,
    required this.isDisabled,
    required this.isRed,
    required this.isPending,
  }) : super(key: key);

  final Function()? onPressed;
  final String text;
  final bool isRed;
  final bool isDisabled;
  final bool isPending;

  final double smallRadius =
      Constants.buttonRadius - Constants.buttonBorderWidth;

  final gradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Palette.blueButtonGradient1,
      Palette.blueButtonGradient2,
    ],
  );

  final redGradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Palette.errorGradient1,
      Palette.errorGradient2,
    ],
  );

  @override
  State<_ButtonContent> createState() => _ButtonContentState();
}

class _ButtonContentState extends State<_ButtonContent> {
  final statesController = MaterialStatesController();

  bool isPressed = false;

  @override
  void initState() {
    statesController.addListener(_onButtonStateChanged);
    super.initState();
  }

  @override
  void dispose() {
    statesController.addListener(_onButtonStateChanged);
    super.dispose();
  }

  Future<void> _onButtonStateChanged() async {
    await Future<void>.delayed(
      const Duration(milliseconds: 200),
    );
    if (mounted) {
      setState(() {
        isPressed = statesController.value.contains(MaterialState.pressed);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isDisabled == false) {
      return Stack(
        children: [
          Positioned.fill(
            child: ConstrainedBox(
                constraints:
                    const BoxConstraints(minHeight: Constants.buttonHeight),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: widget.isRed == false
                        ? (isPressed == false ? widget.gradient : null)
                        : widget.redGradient,
                    color: widget.isRed == false
                        ? (isPressed ? Palette.primary80 : null)
                        : null,
                    borderRadius: BorderRadius.circular(Constants.buttonRadius),
                  ),
                )),
          ),
          TextButton(
            statesController: statesController,
            onPressed: widget.onPressed,
            style: ButtonStyle(
                // если понадобится убрать сплеш
                // splashFactory: NoSplash.splashFactory,
                // overlayColor: MaterialStateProperty.all(Colors.transparent),
                minimumSize: const MaterialStatePropertyAll(
                    Size(1, Constants.buttonHeight)),
                padding: const MaterialStatePropertyAll(EdgeInsets.zero),
                side: const MaterialStatePropertyAll(BorderSide.none),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(Constants.buttonRadius))),
                overlayColor: MaterialStatePropertyAll(widget.isRed == false
                    ? Palette.primary80
                    : Palette.redAccentButtonOverlay)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: widget.isPending == false
                    ? Text(
                        widget.text,
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall
                            ?.copyWith(color: Palette.clean),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 14,
                            height: 14,
                            child:
                                CircularProgressIndicator(color: Palette.clean),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            widget.text,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(color: Palette.clean),
                          )
                        ],
                      ),
              ),
            ),
          ),
        ],
      );
    } else {
      return ConstrainedBox(
        constraints: const BoxConstraints(minHeight: Constants.buttonHeight),
        child: TextButton(
            onPressed: null,
            style: TextButton.styleFrom(
              backgroundColor: Palette.buttonGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Constants.buttonRadius),
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Text(
                  widget.text,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: Palette.subtitles40),
                ),
              ),
            )),
      );
    }
  }
}
