import SwiftUI

struct HeadlightDetailView: View {
    let headlight: Headlight

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 22) {
                HeadlightHero(imageName: headlight.imageName, name: headlight.name)
                ModelTag(models: headlight.representativeModels)
                FeatureSection(features: headlight.features)

                NavigationLink {
                    WebInfoView(title: headlight.name, urlString: headlight.urlString)
                } label: {
                    Label("前往車款官網", systemImage: "safari.fill")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 14)
                }
                .buttonStyle(.borderedProminent)
                .tint(.cyan)
            }
            .frame(maxWidth: 720, alignment: .leading)
            .padding(20)
        }
        .navigationTitle(headlight.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

private struct HeadlightHero: View {
    let imageName: String
    let name: String

    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
            .clipShape(RoundedRectangle(cornerRadius: 24))
            .overlay {
                RoundedRectangle(cornerRadius: 24)
                    .stroke(.quaternary, lineWidth: 1)
            }
            .accessibilityLabel(name)
    }
}

private struct ModelTag: View {
    let models: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Label("代表車款", systemImage: "scooter")
                .font(.headline)
            Text(models)
                .font(.subheadline.weight(.medium))
                .foregroundStyle(.secondary)
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.cyan.opacity(0.10), in: RoundedRectangle(cornerRadius: 18))
    }
}

private struct FeatureSection: View {
    let features: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("外型與技術特色")
                .font(.title3.weight(.bold))
            Text(features)
                .font(.body)
                .foregroundStyle(.secondary)
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}

#Preview {
    NavigationStack {
        HeadlightDetailView(headlight: Headlight.catalog[0])
    }
}
