import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../constants/palette.dart';

@RoutePage()
class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key, required this.url});

  final String url;

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

var loadingPercentage = 0;

class _ArticleScreenState extends State<ArticleScreen> {
  late final controller = WebViewController()
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(NavigationDelegate(
      onPageStarted: (url) {
        setState(() {
          loadingPercentage = 0;
        });
      },
      onProgress: (progress) {
        setState(() {
          if (mounted) {
            loadingPercentage = progress;
          }
        });
      },
      onPageFinished: (url) {
        setState(() {
          loadingPercentage = 100;
        });
      },
    ))
    ..loadRequest(Uri.parse(widget.url));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appBar: AppBar(),
        body: Stack(
          children: [
            WebViewWidget(controller: controller),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Palette.clean,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 16,
                    ),
                    onPressed: () => context.router.pop(),
                    color: Palette.accent,
                  ),
                ),
                if (loadingPercentage < 100)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.white,
                      minHeight: 2,
                      value: loadingPercentage / 100.0,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
