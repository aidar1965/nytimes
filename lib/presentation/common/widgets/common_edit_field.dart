import 'dart:async';
import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../generated/locale_keys.g.dart';
import '../../constants/constants.dart';
import '../../constants/palette.dart';

class CommonEditField extends StatefulWidget {
  const CommonEditField({
    this.controller,
    this.initialText,
    this.hintText,
    this.height = Constants.inputFieldDefaultHeight,
    this.isMultiline = false,
    this.obscureText = false,
    this.textCapitalization,
    this.keyboardType,
    this.readOnly = false,
    this.horizontalPadding = 16,
    this.backgroundColor,
    this.align = TextAlign.start,
    this.onTap,
    this.onClearTap,
    this.onChanged,
    this.focusNode,
    this.suffix,
    this.hideCloseButton = false,
    this.maxLength,
    this.errorText,
    this.minLines = 1,
    this.isBlueBorder = false,
    this.enabled = true,
    this.borderColor,
    Key? key,
    this.onTapOutside,
    this.inputFormatters,
  }) : super(key: key);

  final String? hintText;
  final String? initialText;
  final double height;
  final TextEditingController? controller;
  final bool isMultiline;
  final Color? borderColor;

  final bool obscureText;
  final TextCapitalization? textCapitalization;
  final TextInputType? keyboardType;
  final TextAlign align;
  final bool readOnly;
  final double horizontalPadding;
  final Color? backgroundColor;
  final VoidCallback? onTap;
  final VoidCallback? onClearTap;
  final Function(String)? onChanged;
  final FocusNode? focusNode;
  final Widget? suffix;
  final bool hideCloseButton;
  final int? maxLength;
  final String? errorText;
  final int minLines;
  final bool isBlueBorder;
  final bool enabled;
  final Function(PointerDownEvent)? onTapOutside;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<CommonEditField> createState() => _CommonEditFieldState();
}

class _CommonEditFieldState extends State<CommonEditField> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  late String _errorText;
  late bool _error;
  late double _textScaleFactor;
  final _keyboardVisibility = KeyboardVisibilityController();
  late StreamSubscription<bool> _keyboardSubscription;

  late double coefficient = widget.height / Constants.inputFieldDefaultHeight;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _controller = widget.controller ?? TextEditingController();
    _controller
      ..text = widget.initialText ?? ''
      ..addListener(() => listener);
    _keyboardSubscription = _keyboardVisibility.onChange.listen((event) {
      if (!event) {
        _focusNode.unfocus();
      }
    });
    _errorText = widget.errorText ?? LocaleKeys.error.tr();
    _error = widget.errorText != null;
  }

  @override
  void dispose() {
    _controller.removeListener(listener);
    _controller.dispose();
    _keyboardSubscription.cancel();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    _textScaleFactor =
        max(1, 0.5 * (1 + MediaQuery.of(context).textScaleFactor));
    super.didChangeDependencies();
  }

  void listener() {
    setState(() {});
  }

  @override
  void didUpdateWidget(CommonEditField oldWidget) {
    if (oldWidget.errorText != widget.errorText) {
      setState(() {
        _errorText = widget.errorText ?? LocaleKeys.error.tr();
        _error = widget.errorText != null;
      });
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final BorderRadius borderRadius = BorderRadius.circular(8);

    final InputBorder border = OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: const BorderSide(
        color: Palette.primaryColor,
        width: 1,
      ),
    );

    final InputBorder errorBorder = OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: const BorderSide(
        color: Palette.error,
        width: 1,
      ),
    );

    final InputBorder disableBorder = OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(
        color: widget.borderColor ??
            (widget.isBlueBorder == false
                ? Palette.disabledEditField
                : Palette.primary80),
        width: 1,
      ),
    );

    final suffixHeight = _textScaleFactor * widget.height;

    final suffixSpacer = widget.suffix ?? SizedBox(height: suffixHeight);

    final showSuffix = _focusNode.hasFocus &&
        (_controller.text.isNotEmpty &&
            !widget.hideCloseButton &&
            (!widget.readOnly ||
                (widget.readOnly && widget.onClearTap != null)));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Focus(
          onFocusChange: (_) => setState(() {}),
          child: SizedBox(
            height: widget.minLines == 1 ? widget.height : null,
            child: TextField(
              onTapOutside: (event) {
                if (widget.onTapOutside != null) {
                  widget.onTapOutside!(event);
                }
              },
              // {
              //   FocusManager.instance.primaryFocus?.unfocus();
              // },
              inputFormatters: widget.inputFormatters,
              expands: widget.isMultiline,
              focusNode: _focusNode,
              maxLength: widget.maxLength,
              textAlignVertical: widget.isMultiline
                  ? TextAlignVertical.top
                  : TextAlignVertical.center,
              textAlign: widget.isMultiline ? TextAlign.start : widget.align,

              obscuringCharacter: '\u2055',
              obscureText: widget.obscureText,
              controller: _controller,
              readOnly: widget.readOnly,
              onTap: widget.onTap,
              onChanged: (t) {
                widget.onChanged?.call(t);
                setState(() {
                  _error = false;
                });
              },
              enabled: widget.enabled,
              keyboardType:
                  widget.obscureText ? TextInputType.text : widget.keyboardType,
              textCapitalization: widget.obscureText
                  ? TextCapitalization.none
                  : (widget.textCapitalization ?? TextCapitalization.none),
              minLines: widget.minLines,
              maxLines: widget.minLines > 1
                  ? widget.minLines + 10
                  : widget.isMultiline
                      ? null
                      : 1,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: _error
                        ? Palette.error
                        : widget.readOnly
                            ? Palette.disabledEditField
                            : Palette.text,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1,
                  ),
              decoration: InputDecoration(
                  contentPadding: widget.minLines > 1
                      ? EdgeInsets.only(
                          top: showSuffix ? 0 : 16,
                          bottom: 16,
                          left: 16,
                          // right: showSuffix ? 0 : 16,
                        )
                      : EdgeInsets.all(coefficient * 12),
                  isDense: false,
                  counterText: '',
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  fillColor: widget.backgroundColor ?? Palette.background,
                  alignLabelWithHint: true,
                  labelText: widget.hintText,
                  errorText: _error ? '' : null,
                  errorMaxLines: 2,
                  border: disableBorder,
                  enabledBorder: disableBorder,
                  disabledBorder: disableBorder,
                  focusedBorder: widget.readOnly ? disableBorder : border,
                  errorBorder: errorBorder,
                  focusedErrorBorder: errorBorder,
                  errorStyle: const TextStyle(height: 0),
                  labelStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: widget.height /
                            Constants.inputFieldDefaultHeight *
                            16,
                        fontWeight: FontWeight.w400,
                        color: _error
                            ? Palette.error
                            : widget.readOnly
                                ? Palette.disabledEditField
                                : Palette.subtitles,
                      ),
                  suffixStyle: const TextStyle(height: 0),
                  suffixIcon: widget.minLines > 1
                      ? null
                      : !showSuffix
                          ? widget.isMultiline
                              ? null
                              : suffixSpacer
                          : Column(
                              children: [
                                SizedBox.square(
                                  dimension: widget.height ==
                                          Constants.inputFieldDefaultHeight
                                      ? 40
                                      : widget.height,
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    icon: Icon(
                                      Icons.close,
                                      size: 16 * _textScaleFactor,
                                      color: Palette.text,
                                    ),
                                    onPressed: () {
                                      _controller.clear();
                                      widget.onChanged?.call(_controller.text);
                                      setState(() {
                                        _error = false;
                                      });

                                      if (widget.onClearTap != null) {
                                        widget.onClearTap!();
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                  suffix: widget.minLines > 1 && showSuffix
                      ? Column(
                          children: [
                            SizedBox(
                              height: 34,
                              width: 50,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                icon: Icon(
                                  Icons.close,
                                  size: 16 * _textScaleFactor,
                                  color: Palette.text,
                                ),
                                onPressed: () {
                                  _controller.clear();
                                  setState(() {
                                    _error = false;
                                  });

                                  if (widget.onClearTap != null) {
                                    widget.onClearTap!();
                                  }
                                },
                              ),
                            ),
                          ],
                        )
                      : null),
            ),
          ),
        ),
        if (_error) ...[
          const SizedBox(height: 4),
          Text(
            _errorText,
            maxLines: 10,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                height: 0,
                color: Palette.error,
                fontWeight: FontWeight.w400,
                overflow: TextOverflow.ellipsis,
                fontSize: 14),
          ),
        ],
      ],
    );
  }
}
