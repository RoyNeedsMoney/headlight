import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("精選首頁", systemImage: "sparkles") {
                HomeView()
            }

            Tab("頭燈圖鑑", systemImage: "lightbulb.max.fill") {
                HeadlightListView()
            }

            Tab("官方網頁", systemImage: "globe.asia.australia.fill") {
                WebInfoView(
                    title: "Gogoro 官方網頁",
                    urlString: "https://www.gogoro.com/tw/"
                )
            }
        }
        .tint(.cyan)
    }
}

#Preview {
    ContentView()
}
