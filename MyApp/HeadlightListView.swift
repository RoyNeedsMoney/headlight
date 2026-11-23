import SwiftUI

struct HeadlightListView: View {
    private let headlights = Headlight.catalog

    var body: some View {
        NavigationStack {
            List(headlights) { headlight in
                NavigationLink {
                    HeadlightDetailView(headlight: headlight)
                } label: {
                    HeadlightRow(
                        name: headlight.name,
                        representativeModels: headlight.representativeModels,
                        imageName: headlight.imageName
                    )
                }
            }
            .navigationTitle("頭燈圖鑑")
        }
    }
}

private struct HeadlightRow: View {
    let name: String
    let representativeModels: String
    let imageName: String

    var body: some View {
        HStack(spacing: 14) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 76, height: 58)
                .clipShape(RoundedRectangle(cornerRadius: 12))

            VStack(alignment: .leading, spacing: 5) {
                Text(name)
                    .font(.headline)
                    .foregroundStyle(.primary)

                Text(representativeModels)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
            }
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    HeadlightListView()
}
