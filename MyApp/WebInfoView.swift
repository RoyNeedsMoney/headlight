import SwiftUI
import WebKit

struct WebInfoView: View {
    let title: String
    let urlString: String

    var body: some View {
        WebView(urlString: urlString)
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct WebView: UIViewRepresentable {
    let urlString: String

    func makeUIView(context: Context) -> WKWebView {
        let configuration = WKWebViewConfiguration()
        let webView = WKWebView(frame: .zero, configuration: configuration)
        webView.allowsBackForwardNavigationGestures = true
        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        guard let url = URL(string: urlString) else { return }

        if webView.url != url {
            webView.load(URLRequest(url: url))
        }
    }
}

#Preview {
    NavigationStack {
        WebInfoView(title: "Gogoro 官方網頁", urlString: "https://www.gogoro.com/tw/")
    }
}
