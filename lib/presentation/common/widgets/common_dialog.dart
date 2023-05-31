import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../constants/palette.dart';
import 'common_accent_button.dart';

class CommonDialog extends StatefulWidget {
  const CommonDialog({
    this.title,

    //this.widget,
    Key? key,
  }) : super(key: key);

  const CommonDialog.message(
    String message, {
    super.key,
  }) : title = message;

  final String? title;

  //final Widget? widget;

  @override
  State<CommonDialog> createState() => _CommonDialogState();
}

// ---------------------------------------------------------------------------
// ---------------------------------------------------------------------------
// ---------------------------------------------------------------------------
class _CommonDialogState extends State<CommonDialog> {
  @override
  Widget build(BuildContext context) {
    const insetPadding = 16.0;

    return Center(
        child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: AlertDialog(
                // Colors ---------------------------------------------------------------
                surfaceTintColor: Palette.clean,
                backgroundColor: Palette.clean,
                shadowColor: Palette.dialogShadow,
                // Paddings -------------------------------------------------------------
                insetPadding:
                    const EdgeInsets.symmetric(horizontal: insetPadding),
                iconPadding: EdgeInsets.zero,
                titlePadding: widget.title != null
                    ? const EdgeInsets.only(
                        top: 40,
                        left: 16,
                        right: 16,
                        bottom: 24,
                      )
                    : const EdgeInsets.only(top: 28),
                contentPadding:
                    const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                actionsPadding:
                    const EdgeInsets.only(left: 16, right: 16, bottom: 24),

                // Other ----------------------------------------------------------------
                elevation: 10,
                shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(Constants.dialogRadius)),
                ),
                actionsAlignment: MainAxisAlignment.center,
                title: widget.title != null
                    ? SizedBox(
                        width: MediaQuery.of(context).size.width -
                            insetPadding * 2,
                        child: Text(
                          widget.title!,
                          style: Theme.of(context).textTheme.titleSmall,
                          textAlign: TextAlign.center,
                        ),
                      )
                    : const SizedBox.shrink(),
                actions: [
                  CommonAccentButton(
                    isExpanded: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    text: 'Ok', // TODO
                  ),
                ])));
  }
}
