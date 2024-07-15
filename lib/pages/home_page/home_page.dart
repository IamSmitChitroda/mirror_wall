import 'package:web_view/headers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Expanded(
              child: InAppWebView(
                initialUrlRequest: URLRequest(
                  url: WebUri(
                    Provider.of<SearchEngineController>(context).currentPage,
                  ),
                ),
                onWebViewCreated: (InAppWebViewController controller) {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
