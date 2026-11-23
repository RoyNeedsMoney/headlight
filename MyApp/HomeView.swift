import SwiftUI

struct HomeView: View {
    private let headlights = Headlight.catalog

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                HomeHeader()
                IntroductionCard()

                Text("4 大經典頭燈快速預覽")
                    .font(.title3.weight(.bold))
                    .foregroundStyle(.white)

                TabView {
                    ForEach(headlights) { headlight in
                        HeadlightPreviewCard(
                            name: headlight.name,
                            subtitle: headlight.subtitle,
                            imageName: headlight.imageName
                        )
                    }
                }
                .frame(height: 330)
                .tabViewStyle(.page(indexDisplayMode: .always))
            }
            .frame(maxWidth: 720, alignment: .leading)
            .padding(20)
            .padding(.bottom, 12)
        }
        .background {
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .overlay {
                    LinearGradient(
                        colors: [.black.opacity(0.72), .black.opacity(0.28), .black.opacity(0.78)],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .ignoresSafeArea()
                }
        }
    }
}

private struct HomeHeader: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Label("E-BOOK / HEADLIGHT ARCHIVE", systemImage: "bolt.fill")
                .font(.caption.weight(.semibold))
                .foregroundStyle(.cyan)

            Text("Gogoro\n車頭燈圖鑑")
                .font(.system(size: 42, weight: .bold, design: .rounded))
                .foregroundStyle(.white)
        }
        .padding(.top, 14)
    }
}

private struct IntroductionCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("以光，定義你的第一眼")
                .font(.headline)
                .foregroundStyle(.white)

            Text("從經典膠囊光環到迷你魚眼，探索 Gogoro 車系如何透過燈具設計，形塑獨特的夜行樣貌。")
                .font(.subheadline)
                .foregroundStyle(.white.opacity(0.88))
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding(18)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 24))
    }
}

private struct HeadlightPreviewCard: View {
    let name: String
    let subtitle: String
    let imageName: String

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .clipped()

            LinearGradient(
                colors: [.clear, .black.opacity(0.88)],
                startPoint: .center,
                endPoint: .bottom
            )

            VStack(alignment: .leading, spacing: 6) {
                Text(name)
                    .font(.title3.weight(.bold))
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.86))
            }
            .foregroundStyle(.white)
            .padding(20)
        }
        .clipShape(RoundedRectangle(cornerRadius: 26))
        .overlay {
            RoundedRectangle(cornerRadius: 26)
                .stroke(.white.opacity(0.28), lineWidth: 1)
        }
        .padding(.horizontal, 4)
    }
}

#Preview {
    HomeView()
}
